
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int INSN_NOT_AVAILABLE ;
 int UNSPEC_VSEL16QI ;
 int UNSPEC_VSEL4SF ;
 int UNSPEC_VSEL4SI ;
 int UNSPEC_VSEL8HI ;





__attribute__((used)) static int
get_vsel_insn (enum machine_mode mode)
{
  switch (mode)
    {
    case 129:
      return UNSPEC_VSEL4SI;
      break;
    case 130:
      return UNSPEC_VSEL4SF;
      break;
    case 128:
      return UNSPEC_VSEL8HI;
      break;
    case 131:
      return UNSPEC_VSEL16QI;
      break;
    default:
      return INSN_NOT_AVAILABLE;
      break;
    }
  return INSN_NOT_AVAILABLE;
}
