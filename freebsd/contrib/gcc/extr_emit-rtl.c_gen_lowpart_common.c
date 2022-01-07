
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BITS_PER_UNIT ;
 int BLKmode ;
 scalar_t__ CONCAT ;
 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ CONST_VECTOR ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 scalar_t__ MODE_INT ;
 scalar_t__ MODE_PARTIAL_INT ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 scalar_t__ SIGN_EXTEND ;
 scalar_t__ SUBREG ;
 int UNITS_PER_WORD ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 scalar_t__ ZERO_EXTEND ;
 int gcc_assert (int) ;
 int gen_rtx_fmt_e (scalar_t__,int,int ) ;
 int mode_for_size (int,scalar_t__,int ) ;
 int simplify_gen_subreg (int,int ,int,int) ;
 int subreg_lowpart_offset (int,int) ;

rtx
gen_lowpart_common (enum machine_mode mode, rtx x)
{
  int msize = GET_MODE_SIZE (mode);
  int xsize;
  int offset = 0;
  enum machine_mode innermode;



  innermode = GET_MODE (x);
  if (GET_CODE (x) == CONST_INT
      && msize * BITS_PER_UNIT <= HOST_BITS_PER_WIDE_INT)
    innermode = mode_for_size (HOST_BITS_PER_WIDE_INT, MODE_INT, 0);
  else if (innermode == VOIDmode)
    innermode = mode_for_size (HOST_BITS_PER_WIDE_INT * 2, MODE_INT, 0);

  xsize = GET_MODE_SIZE (innermode);

  gcc_assert (innermode != VOIDmode && innermode != BLKmode);

  if (innermode == mode)
    return x;


  if ((msize + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD
      > ((xsize + (UNITS_PER_WORD - 1)) / UNITS_PER_WORD))
    return 0;


  if (SCALAR_FLOAT_MODE_P (mode) && msize > xsize)
    return 0;

  offset = subreg_lowpart_offset (mode, innermode);

  if ((GET_CODE (x) == ZERO_EXTEND || GET_CODE (x) == SIGN_EXTEND)
      && (GET_MODE_CLASS (mode) == MODE_INT
   || GET_MODE_CLASS (mode) == MODE_PARTIAL_INT))
    {
      if (GET_MODE (XEXP (x, 0)) == mode)
 return XEXP (x, 0);
      else if (msize < GET_MODE_SIZE (GET_MODE (XEXP (x, 0))))
 return gen_lowpart_common (mode, XEXP (x, 0));
      else if (msize < xsize)
 return gen_rtx_fmt_e (GET_CODE (x), mode, XEXP (x, 0));
    }
  else if (GET_CODE (x) == SUBREG || REG_P (x)
    || GET_CODE (x) == CONCAT || GET_CODE (x) == CONST_VECTOR
    || GET_CODE (x) == CONST_DOUBLE || GET_CODE (x) == CONST_INT)
    return simplify_gen_subreg (mode, x, innermode, offset);


  return 0;
}
