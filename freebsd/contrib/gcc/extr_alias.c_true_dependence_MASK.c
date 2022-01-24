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
 scalar_t__ ALIAS_SET_MEMORY_BARRIER ; 
 scalar_t__ AND ; 
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int QImode ; 
 scalar_t__ SCRATCH ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
 int VOIDmode ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int (*) (scalar_t__,int)) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 

int
FUNC18 (rtx mem, enum machine_mode mem_mode, rtx x,
		 int (*varies) (rtx, int))
{
  rtx x_addr, mem_addr;
  rtx base;

  if (FUNC7 (x) && FUNC7 (mem))
    return 1;

  /* (mem:BLK (scratch)) is a special mechanism to conflict with everything.
     This is used in epilogue deallocation functions.  */
  if (FUNC3 (x) == BLKmode && FUNC2 (FUNC9 (x, 0)) == SCRATCH)
    return 1;
  if (FUNC3 (mem) == BLKmode && FUNC2 (FUNC9 (mem, 0)) == SCRATCH)
    return 1;
  if (FUNC5 (x) == ALIAS_SET_MEMORY_BARRIER
      || FUNC5 (mem) == ALIAS_SET_MEMORY_BARRIER)
    return 1;

  if (FUNC1 (x, mem))
    return 0;

  /* Read-only memory is by definition never modified, and therefore can't
     conflict with anything.  We don't expect to find read-only set on MEM,
     but stupid user tricks can produce them, so don't die.  */
  if (FUNC6 (x))
    return 0;

  if (FUNC17 (mem, x))
    return 0;

  if (mem_mode == VOIDmode)
    mem_mode = FUNC3 (mem);

  x_addr = FUNC15 (FUNC9 (x, 0));
  mem_addr = FUNC15 (FUNC9 (mem, 0));

  base = FUNC13 (x_addr);
  if (base && (FUNC2 (base) == LABEL_REF
	       || (FUNC2 (base) == SYMBOL_REF
		   && FUNC0 (base))))
    return 0;

  if (! FUNC11 (x_addr, mem_addr, FUNC3 (x), mem_mode))
    return 0;

  x_addr = FUNC12 (x_addr);
  mem_addr = FUNC12 (mem_addr);

  if (! FUNC16 (FUNC4 (mem_mode), mem_addr,
			    FUNC8 (x), x_addr, 0))
    return 0;

  if (FUNC10 (x))
    return 1;

  /* We cannot use aliases_everything_p to test MEM, since we must look
     at MEM_MODE, rather than GET_MODE (MEM).  */
  if (mem_mode == QImode || FUNC2 (mem_addr) == AND)
    return 1;

  /* In true_dependence we also allow BLKmode to alias anything.  Why
     don't we do this in anti_dependence and output_dependence?  */
  if (mem_mode == BLKmode || FUNC3 (x) == BLKmode)
    return 1;

  return ! FUNC14 (mem, x, mem_addr, x_addr,
					      varies);
}