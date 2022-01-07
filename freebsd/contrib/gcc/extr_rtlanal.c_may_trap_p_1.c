
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
 int CONSTANT_P (scalar_t__) ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;

 int HONOR_NANS (int ) ;
 int HONOR_SNANS (int ) ;





 int MEM_NOTRAP_P (scalar_t__) ;
 int MEM_VOLATILE_P (scalar_t__) ;

 unsigned int MTP_AFTER_MOVE ;
 unsigned int MTP_UNALIGNED_MEMS ;




 int SCALAR_FLOAT_MODE_P (int ) ;

 int STRICT_ALIGNMENT ;






 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 scalar_t__ const0_rtx ;
 int flag_trapping_math ;
 int rtx_addr_can_trap_p_1 (scalar_t__,int ,int) ;

__attribute__((used)) static int
may_trap_p_1 (rtx x, unsigned flags)
{
  int i;
  enum rtx_code code;
  const char *fmt;
  bool unaligned_mems = (flags & MTP_UNALIGNED_MEMS) != 0;

  if (x == 0)
    return 0;
  code = GET_CODE (x);
  switch (code)
    {

    case 152:
    case 153:
    case 151:
    case 132:
    case 144:
    case 154:
    case 136:
    case 156:
    case 135:
    case 134:
      return 0;

    case 158:
    case 128:
    case 131:
      return 1;

    case 157:
      return MEM_VOLATILE_P (x);


    case 140:
      if (


   !(flags & MTP_AFTER_MOVE)
   && MEM_NOTRAP_P (x)
   && (!STRICT_ALIGNMENT || !unaligned_mems))
 return 0;
      return
 rtx_addr_can_trap_p_1 (XEXP (x, 0), GET_MODE (x), unaligned_mems);


    case 150:
    case 139:
    case 130:
    case 129:
      if (HONOR_SNANS (GET_MODE (x)))
 return 1;
      if (SCALAR_FLOAT_MODE_P (GET_MODE (x)))
 return flag_trapping_math;
      if (!CONSTANT_P (XEXP (x, 1)) || (XEXP (x, 1) == const0_rtx))
 return 1;
      break;

    case 148:


      return 1;

    case 146:
    case 145:
    case 143:
    case 142:
    case 141:
    case 155:

      if (!flag_trapping_math)
 break;




      if (HONOR_NANS (GET_MODE (x)))
 return 1;


      if (HONOR_NANS (GET_MODE (XEXP (x, 0)))
   || HONOR_NANS (GET_MODE (XEXP (x, 1))))
 return 1;
      break;

    case 149:
    case 138:
      if (HONOR_SNANS (GET_MODE (x)))
 return 1;

      if (HONOR_SNANS (GET_MODE (XEXP (x, 0)))
   || HONOR_SNANS (GET_MODE (XEXP (x, 1))))
 return 1;
      break;

    case 147:

      if (flag_trapping_math && HONOR_NANS (GET_MODE (XEXP (x, 0))))
 return 1;
      break;

    case 137:
    case 159:
    case 133:

      break;

    default:

      if (SCALAR_FLOAT_MODE_P (GET_MODE (x))
   && flag_trapping_math)
 return 1;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   if (may_trap_p_1 (XEXP (x, i), flags))
     return 1;
 }
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < XVECLEN (x, i); j++)
     if (may_trap_p_1 (XVECEXP (x, i, j), flags))
       return 1;
 }
    }
  return 0;
}
