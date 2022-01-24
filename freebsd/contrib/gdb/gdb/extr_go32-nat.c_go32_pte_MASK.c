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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char) ; 
 long FUNC4 (char*) ; 
 int /*<<< orphan*/  pdbr ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (char *arg, int from_tty)
{
  long pde_idx = -1L, i;

  if (arg && *arg)
    {
      while (*arg && FUNC3(*arg))
	arg++;

      if (*arg)
	{
	  pde_idx = FUNC4 (arg);
	  if (pde_idx < 0 || pde_idx >= 1024)
	    FUNC1 ("Entry %ld is outside valid limits [0..1023].", pde_idx);
	}
    }

  pdbr = FUNC2 ();
  if (!pdbr)
    FUNC5 ("Access to Page Tables is not supported on this system.\n");
  else if (pde_idx >= 0)
    FUNC0 (pde_idx, 1);
  else
    for (i = 0; i < 1024; i++)
      FUNC0 (i, 0);
}