
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ MEM ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

__attribute__((used)) static bool
is_mem_ref (rtx pat)
{
  const char * fmt;
  int i, j;
  bool ret = 0;

  if (GET_CODE (pat) == MEM)
    return 1;


  fmt = GET_RTX_FORMAT (GET_CODE (pat));

  for (i = GET_RTX_LENGTH (GET_CODE (pat)) - 1; i >= 0 && !ret; i--)
    {
      if (fmt[i] == 'e')
 ret |= is_mem_ref (XEXP (pat, i));
      else if (fmt[i] == 'E')
 for (j = XVECLEN (pat, i) - 1; j >= 0; j--)
   ret |= is_mem_ref (XVECEXP (pat, i, j));
    }

  return ret;
}
