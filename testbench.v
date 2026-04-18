module testbench;

reg [7:0] A, B;
reg [2:0] select;
wire [7:0] result;

alu_8bit uut (
    .A(A),
    .B(B),
    .select(select),
    .result(result)
);

initial begin
    A = 8'b00001111;
    B = 8'b00000011;

    select = 3'b000; #10; // Add
    select = 3'b001; #10; // Sub
    select = 3'b010; #10; // AND
    select = 3'b011; #10; // OR
    select = 3'b100; #10; // XOR
    select = 3'b101; #10; // NOT
    select = 3'b110; #10; // Shift Left
    select = 3'b111; #10; // Shift Right

    $finish;
end

endmodule
