
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int asm_out_file ;
 int fputc (char,int ) ;
 int fputs (char const*,int ) ;
 int output_addr_const (int ,int ) ;

void
assemble_integer_with_op (const char *op, rtx x)
{
  fputs (op, asm_out_file);
  output_addr_const (asm_out_file, x);
  fputc ('\n', asm_out_file);
}
