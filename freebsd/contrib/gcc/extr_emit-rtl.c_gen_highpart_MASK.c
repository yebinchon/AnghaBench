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
typedef  int rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned int UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 

rtx
FUNC8 (enum machine_mode mode, rtx x)
{
  unsigned int msize = FUNC1 (mode);
  rtx result;

  /* This case loses if X is a subreg.  To catch bugs early,
     complain if an invalid MODE is used even in other cases.  */
  FUNC4 (msize <= UNITS_PER_WORD
	      || msize == (unsigned int) FUNC2 (FUNC0 (x)));

  result = FUNC5 (mode, x, FUNC0 (x),
				FUNC6 (mode, FUNC0 (x)));
  FUNC4 (result);
  
  /* simplify_gen_subreg is not guaranteed to return a valid operand for
     the target if we have a MEM.  gen_highpart must return a valid operand,
     emitting code if necessary to do so.  */
  if (FUNC3 (result))
    {
      result = FUNC7 (result);
      FUNC4 (result);
    }
  
  return result;
}