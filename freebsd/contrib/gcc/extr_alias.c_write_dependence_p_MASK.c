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

/* Variables and functions */
 scalar_t__ ALIAS_SET_MEMORY_BARRIER ; 
 scalar_t__ BLKmode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ SCRATCH ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  rtx_addr_varies_p ; 

__attribute__((used)) static int
FUNC17 (rtx mem, rtx x, int writep)
{
  rtx x_addr, mem_addr;
  rtx fixed_scalar;
  rtx base;

  if (FUNC6 (x) && FUNC6 (mem))
    return 1;

  /* (mem:BLK (scratch)) is a special mechanism to conflict with everything.
     This is used in epilogue deallocation functions.  */
  if (FUNC3 (x) == BLKmode && FUNC2 (FUNC8 (x, 0)) == SCRATCH)
    return 1;
  if (FUNC3 (mem) == BLKmode && FUNC2 (FUNC8 (mem, 0)) == SCRATCH)
    return 1;
  if (FUNC4 (x) == ALIAS_SET_MEMORY_BARRIER
      || FUNC4 (mem) == ALIAS_SET_MEMORY_BARRIER)
    return 1;

  if (FUNC1 (x, mem))
    return 0;

  /* A read from read-only memory can't conflict with read-write memory.  */
  if (!writep && FUNC5 (mem))
    return 0;

  if (FUNC16 (x, mem))
    return 0;

  x_addr = FUNC14 (FUNC8 (x, 0));
  mem_addr = FUNC14 (FUNC8 (mem, 0));

  if (! writep)
    {
      base = FUNC12 (mem_addr);
      if (base && (FUNC2 (base) == LABEL_REF
		   || (FUNC2 (base) == SYMBOL_REF
		       && FUNC0 (base))))
	return 0;
    }

  if (! FUNC10 (x_addr, mem_addr, FUNC3 (x),
			  FUNC3 (mem)))
    return 0;

  x_addr = FUNC11 (x_addr);
  mem_addr = FUNC11 (mem_addr);

  if (!FUNC15 (FUNC7 (mem), mem_addr,
			   FUNC7 (x), x_addr, 0))
    return 0;

  fixed_scalar
    = FUNC13 (mem, x, mem_addr, x_addr,
					 rtx_addr_varies_p);

  return (!(fixed_scalar == mem && !FUNC9 (x))
	  && !(fixed_scalar == x && !FUNC9 (mem)));
}