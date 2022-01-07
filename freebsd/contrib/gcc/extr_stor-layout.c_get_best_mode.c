
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int (* narrow_volatile_bitfield ) () ;} ;


 int BIGGEST_ALIGNMENT ;
 unsigned int BITS_PER_WORD ;
 int GET_CLASS_NARROWEST_MODE (int ) ;
 unsigned int GET_MODE_BITSIZE (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 unsigned int MIN (unsigned int,int ) ;
 int MODE_INT ;
 scalar_t__ SLOW_BYTE_ACCESS ;
 int VOIDmode ;
 int stub1 () ;
 TYPE_1__ targetm ;

enum machine_mode
get_best_mode (int bitsize, int bitpos, unsigned int align,
        enum machine_mode largest_mode, int volatilep)
{
  enum machine_mode mode;
  unsigned int unit = 0;


  for (mode = GET_CLASS_NARROWEST_MODE (MODE_INT); mode != VOIDmode;
       mode = GET_MODE_WIDER_MODE (mode))
    {
      unit = GET_MODE_BITSIZE (mode);
      if ((bitpos % unit) + bitsize <= unit)
 break;
    }

  if (mode == VOIDmode







      || MIN (unit, BIGGEST_ALIGNMENT) > align
      || (largest_mode != VOIDmode && unit > GET_MODE_BITSIZE (largest_mode)))
    return VOIDmode;

  if ((SLOW_BYTE_ACCESS && ! volatilep)
      || (volatilep && !targetm.narrow_volatile_bitfield()))
    {
      enum machine_mode wide_mode = VOIDmode, tmode;

      for (tmode = GET_CLASS_NARROWEST_MODE (MODE_INT); tmode != VOIDmode;
    tmode = GET_MODE_WIDER_MODE (tmode))
 {
   unit = GET_MODE_BITSIZE (tmode);
   if (bitpos / unit == (bitpos + bitsize - 1) / unit
       && unit <= BITS_PER_WORD
       && unit <= MIN (align, BIGGEST_ALIGNMENT)
       && (largest_mode == VOIDmode
    || unit <= GET_MODE_BITSIZE (largest_mode)))
     wide_mode = tmode;
 }

      if (wide_mode != VOIDmode)
 return wide_mode;
    }

  return mode;
}
