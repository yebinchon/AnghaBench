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
struct TYPE_2__ {int flags; int num_breakpoints; int /*<<< orphan*/ * clr_break; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int MO_ADDR_BITS_REMOVE ; 
 int MO_CLR_BREAK_1_BASED ; 
 int MO_CLR_BREAK_USES_ADDR ; 
 scalar_t__* breakaddr ; 
 TYPE_1__* current_monitor ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8 (CORE_ADDR addr, char *shadow)
{
  int i;

  FUNC3 ("MON rmbkpt %s\n", FUNC6 (addr));
  if (current_monitor->clr_break == NULL)
    FUNC1 ("No clr_break defined for this monitor");

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    addr = FUNC0 (addr);

  for (i = 0; i < current_monitor->num_breakpoints; i++)
    {
      if (breakaddr[i] == addr)
	{
	  breakaddr[i] = 0;
	  /* some monitors remove breakpoints based on the address */
	  if (current_monitor->flags & MO_CLR_BREAK_USES_ADDR)
	    FUNC5 (current_monitor->clr_break, addr);
	  else if (current_monitor->flags & MO_CLR_BREAK_1_BASED)
	    FUNC5 (current_monitor->clr_break, i + 1);
	  else
	    FUNC5 (current_monitor->clr_break, i);
	  FUNC4 (NULL, 0);
	  return 0;
	}
    }
  FUNC2 (gdb_stderr,
		      "Can't find breakpoint associated with 0x%s\n",
		      FUNC7 (addr));
  return 1;
}