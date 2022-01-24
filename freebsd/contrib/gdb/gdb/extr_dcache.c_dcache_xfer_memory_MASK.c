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
typedef  int /*<<< orphan*/  DCACHE ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3 (DCACHE *dcache, CORE_ADDR memaddr, char *myaddr, int len,
		    int should_write)
{
  int i;
  int (*xfunc) (DCACHE *dcache, CORE_ADDR addr, char *ptr);
  xfunc = should_write ? dcache_poke_byte : dcache_peek_byte;

  for (i = 0; i < len; i++)
    {
      if (!xfunc (dcache, memaddr + i, myaddr + i))
	return 0;
    }

  /* FIXME: There may be some benefit from moving the cache writeback
     to a higher layer, as it could occur after a sequence of smaller
     writes have been completed (as when a stack frame is constructed
     for an inferior function call).  Note that only moving it up one
     level to target_xfer_memory() (also target_xfer_memory_partial())
     is not sufficent, since we want to coalesce memory transfers that
     are "logically" connected but not actually a single call to one
     of the memory transfer functions. */

  if (should_write)
    FUNC2 (dcache);
    
  return len;
}