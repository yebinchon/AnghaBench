
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 scalar_t__ VOIDmode ;
 scalar_t__ subreg_lowpart_offset (scalar_t__,scalar_t__) ;

int
subreg_lowpart_p (rtx x)
{
  if (GET_CODE (x) != SUBREG)
    return 1;
  else if (GET_MODE (SUBREG_REG (x)) == VOIDmode)
    return 0;

  return (subreg_lowpart_offset (GET_MODE (x), GET_MODE (SUBREG_REG (x)))
   == SUBREG_BYTE (x));
}
