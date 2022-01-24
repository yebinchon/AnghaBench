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
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 unsigned int FUNC2 (scalar_t__,int,scalar_t__,int,unsigned int) ; 

__attribute__((used)) static unsigned int
FUNC3 (rtx x, enum machine_mode mode, rtx known_x,
			    enum machine_mode known_mode,
			    unsigned int known_ret)
{
  if (x == known_x && mode == known_mode)
    return known_ret;

  /* Try to find identical subexpressions.  If found call
     num_sign_bit_copies1 on X with the subexpressions as KNOWN_X and
     the precomputed value for the subexpression as KNOWN_RET.  */

  if (FUNC0 (x))
    {
      rtx x0 = FUNC1 (x, 0);
      rtx x1 = FUNC1 (x, 1);

      /* Check the first level.  */
      if (x0 == x1)
	return
	  FUNC2 (x, mode, x0, mode,
				FUNC3 (x0, mode, known_x,
							    known_mode,
							    known_ret));

      /* Check the second level.  */
      if (FUNC0 (x0)
	  && (x1 == FUNC1 (x0, 0) || x1 == FUNC1 (x0, 1)))
	return
	  FUNC2 (x, mode, x1, mode,
				FUNC3 (x1, mode, known_x,
							    known_mode,
							    known_ret));

      if (FUNC0 (x1)
	  && (x0 == FUNC1 (x1, 0) || x0 == FUNC1 (x1, 1)))
	return
	  FUNC2 (x, mode, x0, mode,
				FUNC3 (x0, mode, known_x,
							    known_mode,
							    known_ret));
    }

  return FUNC2 (x, mode, known_x, known_mode, known_ret);
}