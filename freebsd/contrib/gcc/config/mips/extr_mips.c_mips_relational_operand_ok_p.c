
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int TARGET_MIPS16 ;
 int VOIDmode ;
 int arith_operand (int ,int ) ;
 int const1_rtx ;
 int gcc_unreachable () ;
 int reg_or_0_operand (int ,int ) ;
 int sle_operand (int ,int ) ;
 int sleu_operand (int ,int ) ;

__attribute__((used)) static bool
mips_relational_operand_ok_p (enum rtx_code code, rtx cmp1)
{
  switch (code)
    {
    case 133:
    case 132:
      return reg_or_0_operand (cmp1, VOIDmode);

    case 135:
    case 134:
      return !TARGET_MIPS16 && cmp1 == const1_rtx;

    case 129:
    case 128:
      return arith_operand (cmp1, VOIDmode);

    case 131:
      return sle_operand (cmp1, VOIDmode);

    case 130:
      return sleu_operand (cmp1, VOIDmode);

    default:
      gcc_unreachable ();
    }
}
