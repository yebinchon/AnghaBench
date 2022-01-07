
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
 scalar_t__ CC_REGNUM ;


 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ REG ;
 scalar_t__ REGNO (scalar_t__) ;






 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ const0_rtx ;
 int gcc_assert (int) ;

int
s390_branch_condition_mask (rtx code)
{
  const int CC0 = 1 << 3;
  const int CC1 = 1 << 2;
  const int CC2 = 1 << 1;
  const int CC3 = 1 << 0;

  gcc_assert (GET_CODE (XEXP (code, 0)) == REG);
  gcc_assert (REGNO (XEXP (code, 0)) == CC_REGNUM);
  gcc_assert (XEXP (code, 1) == const0_rtx);

  switch (GET_MODE (XEXP (code, 0)))
    {
    case 146:
    case 147:
      switch (GET_CODE (code))
        {
        case 145: return CC0;
 case 135: return CC1 | CC2 | CC3;
 default: return -1;
        }
      break;

    case 152:
      switch (GET_CODE (code))
        {
        case 145: return CC1;
 case 135: return CC0 | CC2 | CC3;
 default: return -1;
        }
      break;

    case 151:
      switch (GET_CODE (code))
        {
        case 145: return CC2;
 case 135: return CC0 | CC1 | CC3;
 default: return -1;
        }
      break;

    case 150:
      switch (GET_CODE (code))
        {
        case 145: return CC3;
 case 135: return CC0 | CC1 | CC2;
 default: return -1;
        }
      break;

    case 155:
      switch (GET_CODE (code))
        {
        case 145: return CC0 | CC2;
 case 135: return CC1 | CC3;
 default: return -1;
        }
      break;

    case 158:
      switch (GET_CODE (code))
        {
 case 136: return CC2 | CC3;
 case 143: return CC0 | CC1;
 default: return -1;
        }
      break;

    case 157:
      switch (GET_CODE (code))
        {
 case 141: return CC0 | CC1;
 case 139: return CC2 | CC3;
 default: return -1;
        }
      break;

    case 156:
      switch (GET_CODE (code))
 {
 case 145: return CC0 | CC2;
 case 135: return CC1 | CC3;
 case 136: return CC1;
 case 141: return CC3;
 case 139: return CC1 | CC2;
 case 143: return CC2 | CC3;
 default: return -1;
 }

    case 148:
      switch (GET_CODE (code))
        {
        case 145: return CC0;
        case 135: return CC1 | CC2 | CC3;
        case 136: return CC1;
        case 141: return CC2;
        case 139: return CC0 | CC1;
        case 143: return CC0 | CC2;
 default: return -1;
        }
      break;

    case 149:
      switch (GET_CODE (code))
        {
        case 145: return CC0;
        case 135: return CC2 | CC1 | CC3;
        case 136: return CC2;
        case 141: return CC1;
        case 139: return CC0 | CC2;
        case 143: return CC0 | CC1;
 default: return -1;
        }
      break;

    case 159:
      switch (GET_CODE (code))
        {
        case 145: return CC0;
        case 135: return CC1 | CC2 | CC3;
        case 138: return CC1 | CC3;
        case 142: return CC2;
        case 140: return CC0 | CC1 | CC3;
        case 144: return CC0 | CC2;
 default: return -1;
        }
      break;

    case 160:
      switch (GET_CODE (code))
        {
        case 145: return CC0;
        case 135: return CC1 | CC2 | CC3;
        case 138: return CC1;
        case 142: return CC2 | CC3;
        case 140: return CC0 | CC1;
        case 144: return CC0 | CC2 | CC3;
 default: return -1;
        }
      break;

    case 153:
      switch (GET_CODE (code))
        {
        case 145: return CC0;
        case 135: return CC1 | CC2 | CC3;
        case 138: return CC1;
        case 142: return CC2;
        case 140: return CC0 | CC1;
        case 144: return CC0 | CC2;
 case 128: return CC3;
 case 134: return CC0 | CC1 | CC2;
 case 133: return CC0 | CC3;
        case 129: return CC1 | CC3;
        case 131: return CC2 | CC3;
        case 130: return CC0 | CC1 | CC3;
        case 132: return CC0 | CC2 | CC3;
 case 137: return CC1 | CC2;
 default: return -1;
        }
      break;

    case 154:
      switch (GET_CODE (code))
        {
        case 145: return CC0;
        case 135: return CC2 | CC1 | CC3;
        case 138: return CC2;
        case 142: return CC1;
        case 140: return CC0 | CC2;
        case 144: return CC0 | CC1;
 case 128: return CC3;
 case 134: return CC0 | CC2 | CC1;
 case 133: return CC0 | CC3;
        case 129: return CC2 | CC3;
        case 131: return CC1 | CC3;
        case 130: return CC0 | CC2 | CC3;
        case 132: return CC0 | CC1 | CC3;
 case 137: return CC2 | CC1;
 default: return -1;
        }
      break;

    default:
      return -1;
    }
}
