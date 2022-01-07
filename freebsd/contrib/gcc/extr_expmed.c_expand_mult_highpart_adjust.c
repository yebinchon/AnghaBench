
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_BITSIZE (int) ;
 int MINUS ;
 int NULL_RTX ;
 int NULL_TREE ;
 int PLUS ;
 int RSHIFT_EXPR ;
 int build_int_cst (int ,scalar_t__) ;
 int expand_and (int,int ,int ,int ) ;
 int expand_shift (int ,int,int ,int ,int ,int ) ;
 int force_operand (int ,int ) ;
 int gen_rtx_fmt_ee (int,int,int ,int ) ;

rtx
expand_mult_highpart_adjust (enum machine_mode mode, rtx adj_operand, rtx op0,
        rtx op1, rtx target, int unsignedp)
{
  rtx tem;
  enum rtx_code adj_code = unsignedp ? PLUS : MINUS;

  tem = expand_shift (RSHIFT_EXPR, mode, op0,
        build_int_cst (NULL_TREE, GET_MODE_BITSIZE (mode) - 1),
        NULL_RTX, 0);
  tem = expand_and (mode, tem, op1, NULL_RTX);
  adj_operand
    = force_operand (gen_rtx_fmt_ee (adj_code, mode, adj_operand, tem),
       adj_operand);

  tem = expand_shift (RSHIFT_EXPR, mode, op1,
        build_int_cst (NULL_TREE, GET_MODE_BITSIZE (mode) - 1),
        NULL_RTX, 0);
  tem = expand_and (mode, tem, op0, NULL_RTX);
  target = force_operand (gen_rtx_fmt_ee (adj_code, mode, adj_operand, tem),
     target);

  return target;
}
