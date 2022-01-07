
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONST_DOUBLE ;
 int CONST_DOUBLE_HIGH (int ) ;
 int CONST_DOUBLE_LOW (int ) ;
 scalar_t__ CONST_INT ;
 scalar_t__ DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 int HOST_BITS_PER_WIDE_INT ;
 int INTVAL (int ) ;
 scalar_t__ VOIDmode ;

int
includes_rldicr_lshift_p (rtx shiftop, rtx andop)
{
  if (GET_CODE (andop) == CONST_INT)
    {
      HOST_WIDE_INT c, lsb, shift_mask;

      shift_mask = ~0;
      shift_mask <<= INTVAL (shiftop);
      c = INTVAL (andop);


      lsb = c & -c;



      if ((lsb & shift_mask) == 0)
 return 0;


      return c == -lsb && lsb != 1;
    }
  else if (GET_CODE (andop) == CONST_DOUBLE
    && (GET_MODE (andop) == VOIDmode || GET_MODE (andop) == DImode))
    {
      HOST_WIDE_INT low, lsb, shift_mask_low;

      low = CONST_DOUBLE_LOW (andop);

      if (HOST_BITS_PER_WIDE_INT < 64)
 {
   HOST_WIDE_INT high, shift_mask_high;

   high = CONST_DOUBLE_HIGH (andop);

   if (low == 0)
     {
       shift_mask_high = ~0;
       if (INTVAL (shiftop) > 32)
  shift_mask_high <<= INTVAL (shiftop) - 32;

       lsb = high & -high;

       if ((lsb & shift_mask_high) == 0)
  return 0;

       return high == -lsb;
     }
   if (high != ~0)
     return 0;
 }

      shift_mask_low = ~0;
      shift_mask_low <<= INTVAL (shiftop);

      lsb = low & -low;

      if ((lsb & shift_mask_low) == 0)
 return 0;

      return low == -lsb && lsb != 1;
    }
  else
    return 0;
}
