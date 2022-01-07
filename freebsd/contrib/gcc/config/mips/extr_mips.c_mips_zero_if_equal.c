
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int GET_MODE (scalar_t__) ;
 int OPTAB_DIRECT ;
 int VOIDmode ;
 scalar_t__ const0_rtx ;
 scalar_t__ expand_binop (int ,int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 int sub_optab ;
 scalar_t__ uns_arith_operand (scalar_t__,int ) ;
 int xor_optab ;

__attribute__((used)) static rtx
mips_zero_if_equal (rtx cmp0, rtx cmp1)
{
  if (cmp1 == const0_rtx)
    return cmp0;

  if (uns_arith_operand (cmp1, VOIDmode))
    return expand_binop (GET_MODE (cmp0), xor_optab,
    cmp0, cmp1, 0, 0, OPTAB_DIRECT);

  return expand_binop (GET_MODE (cmp0), sub_optab,
         cmp0, cmp1, 0, 0, OPTAB_DIRECT);
}
