
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ PLUS ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ arg_pointer_rtx ;
 scalar_t__ frame_pointer_rtx ;

int
function_invariant_p (rtx x)
{
  if (CONSTANT_P (x))
    return 1;
  if (x == frame_pointer_rtx || x == arg_pointer_rtx)
    return 1;
  if (GET_CODE (x) == PLUS
      && (XEXP (x, 0) == frame_pointer_rtx || XEXP (x, 0) == arg_pointer_rtx)
      && CONSTANT_P (XEXP (x, 1)))
    return 1;
  return 0;
}
