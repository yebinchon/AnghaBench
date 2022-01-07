
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {scalar_t__ locs; } ;


 TYPE_1__* CSELIB_VAL_PTR (int ) ;
 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 scalar_t__ VALUE ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;

int
references_value_p (rtx x, int only_useless)
{
  enum rtx_code code = GET_CODE (x);
  const char *fmt = GET_RTX_FORMAT (code);
  int i, j;

  if (GET_CODE (x) == VALUE
      && (! only_useless || CSELIB_VAL_PTR (x)->locs == 0))
    return 1;

  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e' && references_value_p (XEXP (x, i), only_useless))
 return 1;
      else if (fmt[i] == 'E')
 for (j = 0; j < XVECLEN (x, i); j++)
   if (references_value_p (XVECEXP (x, i, j), only_useless))
     return 1;
    }

  return 0;
}
