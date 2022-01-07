
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {scalar_t__ reaching_reg; int pattern; } ;
typedef scalar_t__ rtx ;
typedef int basic_block ;


 scalar_t__ AVAIL_STORE_LIST (struct ls_expr*) ;
 int BLOCK_FOR_INSN (scalar_t__) ;
 int GET_MODE (int ) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ gen_reg_rtx (int ) ;
 int replace_store_insn (scalar_t__,scalar_t__,int ,struct ls_expr*) ;

__attribute__((used)) static void
delete_store (struct ls_expr * expr, basic_block bb)
{
  rtx reg, i, del;

  if (expr->reaching_reg == NULL_RTX)
    expr->reaching_reg = gen_reg_rtx (GET_MODE (expr->pattern));

  reg = expr->reaching_reg;

  for (i = AVAIL_STORE_LIST (expr); i; i = XEXP (i, 1))
    {
      del = XEXP (i, 0);
      if (BLOCK_FOR_INSN (del) == bb)
 {


   replace_store_insn (reg, del, bb, expr);
   break;
 }
    }
}
