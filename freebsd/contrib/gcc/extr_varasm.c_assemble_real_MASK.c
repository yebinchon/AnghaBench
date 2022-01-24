#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (long*,int /*<<< orphan*/ *,int) ; 

void
FUNC7 (REAL_VALUE_TYPE d, enum machine_mode mode, unsigned int align)
{
  long data[4] = {0, 0, 0, 0};
  int i;
  int bitsize, nelts, nunits, units_per;

  /* This is hairy.  We have a quantity of known size.  real_to_target
     will put it into an array of *host* longs, 32 bits per element
     (even if long is more than 32 bits).  We need to determine the
     number of array elements that are occupied (nelts) and the number
     of *target* min-addressable units that will be occupied in the
     object file (nunits).  We cannot assume that 32 divides the
     mode's bitsize (size * BITS_PER_UNIT) evenly.

     size * BITS_PER_UNIT is used here to make sure that padding bits
     (which might appear at either end of the value; real_to_target
     will include the padding bits in its output array) are included.  */

  nunits = FUNC2 (mode);
  bitsize = nunits * BITS_PER_UNIT;
  nelts = FUNC0 (bitsize, 32);
  units_per = 32 / BITS_PER_UNIT;

  FUNC6 (data, &d, mode);

  /* Put out the first word with the specified alignment.  */
  FUNC4 (FUNC1 (data[0]), FUNC3 (nunits, units_per), align, 1);
  nunits -= units_per;

  /* Subsequent words need only 32-bit alignment.  */
  align = FUNC5 (align, 32);

  for (i = 1; i < nelts; i++)
    {
      FUNC4 (FUNC1 (data[i]), FUNC3 (nunits, units_per), align, 1);
      nunits -= units_per;
    }
}