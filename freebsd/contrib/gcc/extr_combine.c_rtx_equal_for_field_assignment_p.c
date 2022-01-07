
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ GET_MODE (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ gen_lowpart (scalar_t__,scalar_t__) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
rtx_equal_for_field_assignment_p (rtx x, rtx y)
{
  if (x == y || rtx_equal_p (x, y))
    return 1;

  if (x == 0 || y == 0 || GET_MODE (x) != GET_MODE (y))
    return 0;




  if (MEM_P (x) && GET_CODE (y) == SUBREG
      && MEM_P (SUBREG_REG (y))
      && rtx_equal_p (SUBREG_REG (y),
        gen_lowpart (GET_MODE (SUBREG_REG (y)), x)))
    return 1;

  if (MEM_P (y) && GET_CODE (x) == SUBREG
      && MEM_P (SUBREG_REG (x))
      && rtx_equal_p (SUBREG_REG (x),
        gen_lowpart (GET_MODE (SUBREG_REG (x)), y)))
    return 1;






  return 0;
}
