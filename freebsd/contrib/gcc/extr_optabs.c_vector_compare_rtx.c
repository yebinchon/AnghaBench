
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int (* predicate ) (int ,scalar_t__) ;} ;


 int COMPARISON_CLASS_P (int ) ;
 scalar_t__ GET_MODE (int ) ;
 int NULL_RTX ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 scalar_t__ VOIDmode ;
 int expand_expr (int ,int ,int ,int) ;
 int force_reg (scalar_t__,int ) ;
 int gcc_assert (int ) ;
 int gen_rtx_fmt_ee (int,scalar_t__,int ,int ) ;
 int get_rtx_code (int ,int) ;
 TYPE_2__* insn_data ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;

__attribute__((used)) static rtx
vector_compare_rtx (tree cond, bool unsignedp, enum insn_code icode)
{
  enum rtx_code rcode;
  tree t_op0, t_op1;
  rtx rtx_op0, rtx_op1;



  gcc_assert (COMPARISON_CLASS_P (cond));

  rcode = get_rtx_code (TREE_CODE (cond), unsignedp);
  t_op0 = TREE_OPERAND (cond, 0);
  t_op1 = TREE_OPERAND (cond, 1);


  rtx_op0 = expand_expr (t_op0, NULL_RTX, TYPE_MODE (TREE_TYPE (t_op0)), 1);
  rtx_op1 = expand_expr (t_op1, NULL_RTX, TYPE_MODE (TREE_TYPE (t_op1)), 1);

  if (!insn_data[icode].operand[4].predicate (rtx_op0, GET_MODE (rtx_op0))
      && GET_MODE (rtx_op0) != VOIDmode)
    rtx_op0 = force_reg (GET_MODE (rtx_op0), rtx_op0);

  if (!insn_data[icode].operand[5].predicate (rtx_op1, GET_MODE (rtx_op1))
      && GET_MODE (rtx_op1) != VOIDmode)
    rtx_op1 = force_reg (GET_MODE (rtx_op1), rtx_op1);

  return gen_rtx_fmt_ee (rcode, VOIDmode, rtx_op0, rtx_op1);
}
