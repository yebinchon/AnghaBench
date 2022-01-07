
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int COMPARISON_P (int ) ;
 int CR0_REGNO ;
 scalar_t__ CR_REGNO_P (int) ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ REG ;
 int REGNO (int ) ;



 int XEXP (int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int validate_condition_mode (int,int) ;

int
ccr_bit (rtx op, int scc_p)
{
  enum rtx_code code = GET_CODE (op);
  enum machine_mode cc_mode;
  int cc_regnum;
  int base_bit;
  rtx reg;

  if (!COMPARISON_P (op))
    return -1;

  reg = XEXP (op, 0);

  gcc_assert (GET_CODE (reg) == REG && CR_REGNO_P (REGNO (reg)));

  cc_mode = GET_MODE (reg);
  cc_regnum = REGNO (reg);
  base_bit = 4 * (cc_regnum - CR0_REGNO);

  validate_condition_mode (code, cc_mode);



  gcc_assert (!scc_p
       || code == 141 || code == 138 || code == 134 || code == 128
       || code == 137 || code == 133);

  switch (code)
    {
    case 132:
      return scc_p ? base_bit + 3 : base_bit + 2;
    case 141:
      return base_bit + 2;
    case 138: case 137: case 129:
      return base_bit + 1;
    case 134: case 133: case 130:
      return base_bit;
    case 131: case 128:
      return base_bit + 3;

    case 140: case 139:



      return scc_p ? base_bit + 3 : base_bit;

    case 136: case 135:
      return scc_p ? base_bit + 3 : base_bit + 1;

    default:
      gcc_unreachable ();
    }
}
