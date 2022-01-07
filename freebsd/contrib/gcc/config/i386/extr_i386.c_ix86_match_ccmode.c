
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;







 scalar_t__ COMPARE ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int const0_rtx ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

int
ix86_match_ccmode (rtx insn, enum machine_mode req_mode)
{
  rtx set;
  enum machine_mode set_mode;

  set = PATTERN (insn);
  if (GET_CODE (set) == PARALLEL)
    set = XVECEXP (set, 0, 0);
  gcc_assert (GET_CODE (set) == SET);
  gcc_assert (GET_CODE (SET_SRC (set)) == COMPARE);

  set_mode = GET_MODE (SET_DEST (set));
  switch (set_mode)
    {
    case 130:
      if (req_mode != 130
   && (req_mode != 128
       || XEXP (SET_SRC (set), 1) != const0_rtx))
 return 0;
      break;
    case 128:
      if (req_mode == 132)
 return 0;

    case 132:
      if (req_mode == 131 || req_mode == 130)
 return 0;

    case 131:
      if (req_mode == 129)
 return 0;

    case 129:
      break;

    default:
      gcc_unreachable ();
    }

  return (GET_MODE (SET_SRC (set)) == set_mode);
}
