
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BITS_PER_UNIT ;
 scalar_t__ CONST_INT ;
 int FALSE ;
 scalar_t__ GET_CODE (int ) ;
 char* HOST_WIDE_INT_PRINT_HEX ;
 int INTVAL (int ) ;
 int asm_out_file ;
 int assemble_integer (int ,int,int ,int) ;
 int fprintf (int ,char*,int ) ;
 int fputs (char const*,int ) ;
 char* integer_asm_op (int,int ) ;
 int output_addr_const (int ,int ) ;

void
dw2_assemble_integer (int size, rtx x)
{
  const char *op = integer_asm_op (size, FALSE);

  if (op)
    {
      fputs (op, asm_out_file);
      if (GET_CODE (x) == CONST_INT)
 fprintf (asm_out_file, HOST_WIDE_INT_PRINT_HEX, INTVAL (x));
      else
 output_addr_const (asm_out_file, x);
    }
  else
    assemble_integer (x, size, BITS_PER_UNIT, 1);
}
