
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 char* ASM_COMMENT_START ;
 int ORIGINAL_REGNO (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int asm_out_file ;
 int fprintf (int ,char*,...) ;
 scalar_t__ get_mem_expr_from_op (int ,int*) ;
 int print_mem_expr (int ,scalar_t__) ;

__attribute__((used)) static void
output_asm_operand_names (rtx *operands, int *oporder, int nops)
{
  int wrote = 0;
  int i;

  for (i = 0; i < nops; i++)
    {
      int addressp;
      rtx op = operands[oporder[i]];
      tree expr = get_mem_expr_from_op (op, &addressp);

      fprintf (asm_out_file, "%c%s",
        wrote ? ',' : '\t', wrote ? "" : ASM_COMMENT_START);
      wrote = 1;
      if (expr)
 {
   fprintf (asm_out_file, "%s",
     addressp ? "*" : "");
   print_mem_expr (asm_out_file, expr);
   wrote = 1;
 }
      else if (REG_P (op) && ORIGINAL_REGNO (op)
        && ORIGINAL_REGNO (op) != REGNO (op))
 fprintf (asm_out_file, " tmp%i", ORIGINAL_REGNO (op));
    }
}
