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
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

CORE_ADDR
FUNC1 (struct gdbarch *gdbarch,
					  CORE_ADDR bpaddr)
{
  /* PPC64 SYSV specifies that the minimal-symbol "FN" should point at
     a function-descriptor while the corresponding minimal-symbol
     ".FN" should point at the entry point.  Consequently, a command
     like "break FN" applied to an object file with only minimal
     symbols, will insert the breakpoint into the descriptor at "FN"
     and not the function at ".FN".  Avoid this confusion by adjusting
     any attempt to set a descriptor breakpoint into a corresponding
     function breakpoint.  Note that GDB warns the user when this
     adjustment is applied - that's ok as otherwise the user will have
     no way of knowing why their breakpoint at "FN" resulted in the
     program stopping at ".FN".  */
  return FUNC0 (gdbarch, bpaddr, &current_target);
}