
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;




 int CCAmode ;
 int CCTmode ;



 int CC_REGNO_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ REG ;
 int REGNO (int ) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;

__attribute__((used)) static bool
s390_match_ccmode_set (rtx set, enum machine_mode req_mode)
{
  enum machine_mode set_mode;

  gcc_assert (GET_CODE (set) == SET);

  if (GET_CODE (SET_DEST (set)) != REG || !CC_REGNO_P (REGNO (SET_DEST (set))))
    return 1;

  set_mode = GET_MODE (SET_DEST (set));
  switch (set_mode)
    {
    case 134:
    case 135:
    case 129:
    case 130:
    case 136:
    case 139:
    case 138:
    case 137:
    case 133:
    case 132:
    case 131:
      if (req_mode != set_mode)
        return 0;
      break;

    case 128:
      if (req_mode != 134 && req_mode != 129 && req_mode != CCTmode
   && req_mode != 135 && req_mode != 130)
        return 0;
      break;

    case 140:
    case 141:
      if (req_mode != CCAmode)
        return 0;
      break;

    default:
      gcc_unreachable ();
    }

  return (GET_MODE (SET_SRC (set)) == set_mode);
}
