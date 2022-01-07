
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int RTX_CODE ;


 size_t ARG_POINTER_REGNUM ;





 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;



 int MEM_READONLY_P (int ) ;
 int MEM_VOLATILE_P (int ) ;


 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int arg_pointer_rtx ;
 int * fixed_regs ;
 int frame_pointer_rtx ;
 int hard_frame_pointer_rtx ;
 int pic_offset_table_rtx ;

int
rtx_varies_p (rtx x, int for_alias)
{
  RTX_CODE code;
  int i;
  const char *fmt;

  if (!x)
    return 0;

  code = GET_CODE (x);
  switch (code)
    {
    case 130:
      return !MEM_READONLY_P (x) || rtx_varies_p (XEXP (x, 0), for_alias);

    case 136:
    case 134:
    case 135:
    case 133:
    case 128:
    case 132:
      return 0;

    case 129:




      if (x == frame_pointer_rtx || x == hard_frame_pointer_rtx

   || (x == arg_pointer_rtx && fixed_regs[ARG_POINTER_REGNUM]))
 return 0;
      if (x == pic_offset_table_rtx







   )
 return 0;
      return 1;

    case 131:



      return (! for_alias && rtx_varies_p (XEXP (x, 0), for_alias))
      || rtx_varies_p (XEXP (x, 1), for_alias);

    case 137:
      if (MEM_VOLATILE_P (x))
 return 1;



    default:
      break;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    if (fmt[i] == 'e')
      {
 if (rtx_varies_p (XEXP (x, i), for_alias))
   return 1;
      }
    else if (fmt[i] == 'E')
      {
 int j;
 for (j = 0; j < XVECLEN (x, i); j++)
   if (rtx_varies_p (XVECEXP (x, i, j), for_alias))
     return 1;
      }

  return 0;
}
