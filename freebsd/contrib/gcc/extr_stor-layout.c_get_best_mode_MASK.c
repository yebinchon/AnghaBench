#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int /*<<< orphan*/  (* narrow_volatile_bitfield ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BIGGEST_ALIGNMENT ; 
 unsigned int BITS_PER_WORD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_INT ; 
 scalar_t__ SLOW_BYTE_ACCESS ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ targetm ; 

enum machine_mode
FUNC5 (int bitsize, int bitpos, unsigned int align,
	       enum machine_mode largest_mode, int volatilep)
{
  enum machine_mode mode;
  unsigned int unit = 0;

  /* Find the narrowest integer mode that contains the bit field.  */
  for (mode = FUNC0 (MODE_INT); mode != VOIDmode;
       mode = FUNC2 (mode))
    {
      unit = FUNC1 (mode);
      if ((bitpos % unit) + bitsize <= unit)
	break;
    }

  if (mode == VOIDmode
      /* It is tempting to omit the following line
	 if STRICT_ALIGNMENT is true.
	 But that is incorrect, since if the bitfield uses part of 3 bytes
	 and we use a 4-byte mode, we could get a spurious segv
	 if the extra 4th byte is past the end of memory.
	 (Though at least one Unix compiler ignores this problem:
	 that on the Sequent 386 machine.  */
      || FUNC3 (unit, BIGGEST_ALIGNMENT) > align
      || (largest_mode != VOIDmode && unit > FUNC1 (largest_mode)))
    return VOIDmode;

  if ((SLOW_BYTE_ACCESS && ! volatilep)
      || (volatilep && !targetm.narrow_volatile_bitfield()))
    {
      enum machine_mode wide_mode = VOIDmode, tmode;

      for (tmode = FUNC0 (MODE_INT); tmode != VOIDmode;
	   tmode = FUNC2 (tmode))
	{
	  unit = FUNC1 (tmode);
	  if (bitpos / unit == (bitpos + bitsize - 1) / unit
	      && unit <= BITS_PER_WORD
	      && unit <= FUNC3 (align, BIGGEST_ALIGNMENT)
	      && (largest_mode == VOIDmode
		  || unit <= FUNC1 (largest_mode)))
	    wide_mode = tmode;
	}

      if (wide_mode != VOIDmode)
	return wide_mode;
    }

  return mode;
}