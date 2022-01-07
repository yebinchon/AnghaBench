
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_3__* rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_13__ {TYPE_1__* fld; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_3__* rt_rtx; } ;


 int GET_CODE (TYPE_3__*) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 TYPE_3__* XEXP (TYPE_3__*,int) ;
 TYPE_3__* XVECEXP (TYPE_3__*,int,int) ;
 int XVECLEN (TYPE_3__*,int) ;

int
loc_mentioned_in_p (rtx *loc, rtx in)
{
  enum rtx_code code = GET_CODE (in);
  const char *fmt = GET_RTX_FORMAT (code);
  int i, j;

  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (loc == &in->u.fld[i].rt_rtx)
 return 1;
      if (fmt[i] == 'e')
 {
   if (loc_mentioned_in_p (loc, XEXP (in, i)))
     return 1;
 }
      else if (fmt[i] == 'E')
 for (j = XVECLEN (in, i) - 1; j >= 0; j--)
   if (loc_mentioned_in_p (loc, XVECEXP (in, i, j)))
     return 1;
    }
  return 0;
}
