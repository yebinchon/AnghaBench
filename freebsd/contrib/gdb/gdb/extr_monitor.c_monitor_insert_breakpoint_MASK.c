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
struct TYPE_2__ {int flags; int num_breakpoints; int /*<<< orphan*/ * set_break; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int MO_ADDR_BITS_REMOVE ; 
 scalar_t__* breakaddr ; 
 int /*<<< orphan*/  current_gdbarch ; 
 TYPE_1__* current_monitor ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int
FUNC8 (CORE_ADDR addr, char *shadow)
{
  int i;
  const unsigned char *bp;
  int bplen;

  FUNC3 ("MON inst bkpt %s\n", FUNC7 (addr));
  if (current_monitor->set_break == NULL)
    FUNC1 ("No set_break defined for this monitor");

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    addr = FUNC0 (addr);

  /* Determine appropriate breakpoint size for this address.  */
  bp = FUNC2 (current_gdbarch, &addr, &bplen);

  for (i = 0; i < current_monitor->num_breakpoints; i++)
    {
      if (breakaddr[i] == 0)
	{
	  breakaddr[i] = addr;
	  FUNC6 (addr, shadow, bplen);
	  FUNC5 (current_monitor->set_break, addr);
	  FUNC4 (NULL, 0);
	  return 0;
	}
    }

  FUNC1 ("Too many breakpoints (> %d) for monitor.", current_monitor->num_breakpoints);
}