
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int NEG ;
 int NULL_RTX ;
 scalar_t__ expand_unop (int,int ,scalar_t__,int ,int ) ;
 int neg_optab ;
 scalar_t__ simplify_unary_operation (int ,int,scalar_t__,int) ;

rtx
negate_rtx (enum machine_mode mode, rtx x)
{
  rtx result = simplify_unary_operation (NEG, mode, x, mode);

  if (result == 0)
    result = expand_unop (mode, neg_optab, x, NULL_RTX, 0);

  return result;
}
