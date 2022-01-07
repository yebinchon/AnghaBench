
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int MEM ;
 scalar_t__ PC ;
 int SET ;
 int SET_DEST (int ) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 scalar_t__ refers_to_regno_p (int,int,int ,int ) ;

__attribute__((used)) static bool
reg_used_in_mem_p (int regno, rtx x)
{
  enum rtx_code code = GET_CODE (x);
  int i, j;
  const char *fmt;

  if (code == MEM)
    {
      if (refers_to_regno_p (regno, regno+1,
        XEXP (x, 0), 0))
 return 1;
    }
  else if (code == SET
    && GET_CODE (SET_DEST (x)) == PC)
    {
      if (refers_to_regno_p (regno, regno+1,
        SET_SRC (x), 0))
 return 1;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e'
   && reg_used_in_mem_p (regno, XEXP (x, i)))
 return 1;

      else if (fmt[i] == 'E')
 for (j = 0; j < XVECLEN (x, i); j++)
   if (reg_used_in_mem_p (regno, XVECEXP (x, i, j)))
     return 1;
    }
  return 0;
}
