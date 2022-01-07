
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_SIZE (int ) ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 int MINUS ;
 int PLUS ;






 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int gcc_assert (int) ;
 scalar_t__ stack_pointer_rtx ;

__attribute__((used)) static void
stack_adjust_offset_pre_post (rtx pattern, HOST_WIDE_INT *pre,
         HOST_WIDE_INT *post)
{
  rtx src = SET_SRC (pattern);
  rtx dest = SET_DEST (pattern);
  enum rtx_code code;

  if (dest == stack_pointer_rtx)
    {

      code = GET_CODE (src);
      if (! (code == PLUS || code == MINUS)
   || XEXP (src, 0) != stack_pointer_rtx
   || GET_CODE (XEXP (src, 1)) != CONST_INT)
 return;

      if (code == MINUS)
 *post += INTVAL (XEXP (src, 1));
      else
 *post -= INTVAL (XEXP (src, 1));
    }
  else if (MEM_P (dest))
    {

      src = XEXP (dest, 0);
      code = GET_CODE (src);

      switch (code)
 {
 case 128:
 case 131:
   if (XEXP (src, 0) == stack_pointer_rtx)
     {
       rtx val = XEXP (XEXP (src, 1), 1);

       gcc_assert (GET_CODE (XEXP (src, 1)) == PLUS &&
     GET_CODE (val) == CONST_INT);

       if (code == 128)
  *pre -= INTVAL (val);
       else
  *post -= INTVAL (val);
       break;
     }
   return;

 case 130:
   if (XEXP (src, 0) == stack_pointer_rtx)
     {
       *pre += GET_MODE_SIZE (GET_MODE (dest));
       break;
     }
   return;

 case 133:
   if (XEXP (src, 0) == stack_pointer_rtx)
     {
       *post += GET_MODE_SIZE (GET_MODE (dest));
       break;
     }
   return;

 case 129:
   if (XEXP (src, 0) == stack_pointer_rtx)
     {
       *pre -= GET_MODE_SIZE (GET_MODE (dest));
       break;
     }
   return;

 case 132:
   if (XEXP (src, 0) == stack_pointer_rtx)
     {
       *post -= GET_MODE_SIZE (GET_MODE (dest));
       break;
     }
   return;

 default:
   return;
 }
    }
}
