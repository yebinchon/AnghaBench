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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ ALIAS_SET_MEMORY_BARRIER ; 
 scalar_t__ AND ; 
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int QImode ; 
 scalar_t__ SCRATCH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int (*) (int /*<<< orphan*/ ,int)) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC16 (rtx mem, enum machine_mode mem_mode, rtx mem_addr,
		       rtx x, int (*varies) (rtx, int))
{
  rtx x_addr;

  if (FUNC6 (x) && FUNC6 (mem))
    return 1;

  /* (mem:BLK (scratch)) is a special mechanism to conflict with everything.
     This is used in epilogue deallocation functions.  */
  if (FUNC2 (x) == BLKmode && FUNC1 (FUNC8 (x, 0)) == SCRATCH)
    return 1;
  if (FUNC2 (mem) == BLKmode && FUNC1 (FUNC8 (mem, 0)) == SCRATCH)
    return 1;
  if (FUNC4 (x) == ALIAS_SET_MEMORY_BARRIER
      || FUNC4 (mem) == ALIAS_SET_MEMORY_BARRIER)
    return 1;

  if (FUNC0 (x, mem))
    return 0;

  /* Read-only memory is by definition never modified, and therefore can't
     conflict with anything.  We don't expect to find read-only set on MEM,
     but stupid user tricks can produce them, so don't die.  */
  if (FUNC5 (x))
    return 0;

  if (FUNC15 (x, mem))
    return 0;

  x_addr = FUNC13 (FUNC8 (x, 0));

  if (! FUNC10 (x_addr, mem_addr, FUNC2 (x), mem_mode))
    return 0;

  x_addr = FUNC11 (x_addr);
  if (! FUNC14 (FUNC3 (mem_mode), mem_addr,
			    FUNC7 (x), x_addr, 0))
    return 0;

  if (FUNC9 (x))
    return 1;

  /* We cannot use aliases_everything_p to test MEM, since we must look
     at MEM_MODE, rather than GET_MODE (MEM).  */
  if (mem_mode == QImode || FUNC1 (mem_addr) == AND)
    return 1;

  /* In true_dependence we also allow BLKmode to alias anything.  Why
     don't we do this in anti_dependence and output_dependence?  */
  if (mem_mode == BLKmode || FUNC2 (x) == BLKmode)
    return 1;

  return ! FUNC12 (mem, x, mem_addr, x_addr,
					      varies);
}