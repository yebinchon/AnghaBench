
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int PRINT_OPERAND_ADDRESS (int ,int ) ;
 int asm_out_file ;
 int walk_alter_subreg (int *) ;

void
output_address (rtx x)
{
  walk_alter_subreg (&x);
  PRINT_OPERAND_ADDRESS (asm_out_file, x);
}
