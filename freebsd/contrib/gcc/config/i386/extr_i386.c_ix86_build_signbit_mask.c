
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int rtvec ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int CONST0_RTX (int) ;
 int DFmode ;
 int DImode ;
 int HOST_BITS_PER_WIDE_INT ;
 int SFmode ;
 int SImode ;
 int V2DFmode ;
 int V4SFmode ;
 int force_reg (int,int ) ;
 int gen_lowpart (int,int ) ;
 int gen_rtvec (int,int ,int ,...) ;
 int gen_rtx_CONST_VECTOR (int,int ) ;
 int immed_double_const (int,int,int ) ;

rtx
ix86_build_signbit_mask (enum machine_mode mode, bool vect, bool invert)
{
  enum machine_mode vec_mode;
  HOST_WIDE_INT hi, lo;
  int shift = 63;
  rtvec v;
  rtx mask;


  if (mode == SFmode)
    lo = 0x80000000, hi = lo < 0;
  else if (HOST_BITS_PER_WIDE_INT >= 64)
    lo = (HOST_WIDE_INT)1 << shift, hi = -1;
  else
    lo = 0, hi = (HOST_WIDE_INT)1 << (shift - HOST_BITS_PER_WIDE_INT);

  if (invert)
    lo = ~lo, hi = ~hi;


  mask = immed_double_const (lo, hi, mode == SFmode ? SImode : DImode);
  mask = gen_lowpart (mode, mask);

  if (mode == SFmode)
    {
      if (vect)
 v = gen_rtvec (4, mask, mask, mask, mask);
      else
 v = gen_rtvec (4, mask, CONST0_RTX (SFmode),
         CONST0_RTX (SFmode), CONST0_RTX (SFmode));
      vec_mode = V4SFmode;
    }
  else
    {
      if (vect)
 v = gen_rtvec (2, mask, mask);
      else
 v = gen_rtvec (2, mask, CONST0_RTX (DFmode));
      vec_mode = V2DFmode;
    }

  return force_reg (vec_mode, gen_rtx_CONST_VECTOR (vec_mode, v));
}
