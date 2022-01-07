
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct elt_loc_list {scalar_t__ loc; struct elt_loc_list* next; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_6__ {scalar_t__ val_rtx; } ;
struct TYPE_7__ {struct elt_loc_list* locs; TYPE_1__ u; } ;
typedef TYPE_2__ cselib_val ;
struct TYPE_8__ {int (* commutative_p ) (scalar_t__,int ) ;} ;



 TYPE_2__* CSELIB_VAL_PTR (scalar_t__) ;
 int GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;

 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int UNKNOWN ;
 int VALUE ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;
 int XSTR (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int XWINT (scalar_t__,int) ;
 TYPE_2__* cselib_lookup (scalar_t__,scalar_t__,int ) ;
 int gcc_unreachable () ;
 int strcmp (int ,int ) ;
 int stub1 (scalar_t__,int ) ;
 TYPE_3__ targetm ;

int
rtx_equal_for_cselib_p (rtx x, rtx y)
{
  enum rtx_code code;
  const char *fmt;
  int i;

  if (REG_P (x) || MEM_P (x))
    {
      cselib_val *e = cselib_lookup (x, GET_MODE (x), 0);

      if (e)
 x = e->u.val_rtx;
    }

  if (REG_P (y) || MEM_P (y))
    {
      cselib_val *e = cselib_lookup (y, GET_MODE (y), 0);

      if (e)
 y = e->u.val_rtx;
    }

  if (x == y)
    return 1;

  if (GET_CODE (x) == VALUE && GET_CODE (y) == VALUE)
    return CSELIB_VAL_PTR (x) == CSELIB_VAL_PTR (y);

  if (GET_CODE (x) == VALUE)
    {
      cselib_val *e = CSELIB_VAL_PTR (x);
      struct elt_loc_list *l;

      for (l = e->locs; l; l = l->next)
 {
   rtx t = l->loc;


   if (REG_P (t) || MEM_P (t))
     continue;
   else if (rtx_equal_for_cselib_p (t, y))
     return 1;
 }

      return 0;
    }

  if (GET_CODE (y) == VALUE)
    {
      cselib_val *e = CSELIB_VAL_PTR (y);
      struct elt_loc_list *l;

      for (l = e->locs; l; l = l->next)
 {
   rtx t = l->loc;

   if (REG_P (t) || MEM_P (t))
     continue;
   else if (rtx_equal_for_cselib_p (x, t))
     return 1;
 }

      return 0;
    }

  if (GET_CODE (x) != GET_CODE (y) || GET_MODE (x) != GET_MODE (y))
    return 0;


  switch (GET_CODE (x))
    {
    case 129:
      return 0;

    case 128:
      return XEXP (x, 0) == XEXP (y, 0);

    default:
      break;
    }

  code = GET_CODE (x);
  fmt = GET_RTX_FORMAT (code);

  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      int j;

      switch (fmt[i])
 {
 case 'w':
   if (XWINT (x, i) != XWINT (y, i))
     return 0;
   break;

 case 'n':
 case 'i':
   if (XINT (x, i) != XINT (y, i))
     return 0;
   break;

 case 'V':
 case 'E':

   if (XVECLEN (x, i) != XVECLEN (y, i))
     return 0;


   for (j = 0; j < XVECLEN (x, i); j++)
     if (! rtx_equal_for_cselib_p (XVECEXP (x, i, j),
       XVECEXP (y, i, j)))
       return 0;
   break;

 case 'e':
   if (i == 1
       && targetm.commutative_p (x, UNKNOWN)
       && rtx_equal_for_cselib_p (XEXP (x, 1), XEXP (y, 0))
       && rtx_equal_for_cselib_p (XEXP (x, 0), XEXP (y, 1)))
     return 1;
   if (! rtx_equal_for_cselib_p (XEXP (x, i), XEXP (y, i)))
     return 0;
   break;

 case 'S':
 case 's':
   if (strcmp (XSTR (x, i), XSTR (y, i)))
     return 0;
   break;

 case 'u':

   break;

 case '0':
 case 't':
   break;




 default:
   gcc_unreachable ();
 }
    }
  return 1;
}
