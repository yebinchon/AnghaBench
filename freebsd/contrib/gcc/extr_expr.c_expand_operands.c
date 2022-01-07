
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;
typedef enum expand_modifier { ____Placeholder_expand_modifier } expand_modifier ;


 scalar_t__ NULL_RTX ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 int VOIDmode ;
 scalar_t__ copy_rtx (scalar_t__) ;
 scalar_t__ expand_expr (int ,scalar_t__,int ,int) ;
 scalar_t__ flag_evaluation_order ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 int safe_from_p (scalar_t__,int ,int) ;
 int save_expr (int ) ;

__attribute__((used)) static void
expand_operands (tree exp0, tree exp1, rtx target, rtx *op0, rtx *op1,
   enum expand_modifier modifier)
{
  if (! safe_from_p (target, exp1, 1))
    target = 0;
  if (operand_equal_p (exp0, exp1, 0))
    {
      *op0 = expand_expr (exp0, target, VOIDmode, modifier);
      *op1 = copy_rtx (*op0);
    }
  else
    {


      if (flag_evaluation_order && TREE_SIDE_EFFECTS (exp1))
 exp0 = save_expr (exp0);
      *op0 = expand_expr (exp0, target, VOIDmode, modifier);
      *op1 = expand_expr (exp1, NULL_RTX, VOIDmode, modifier);
    }
}
