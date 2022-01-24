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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 scalar_t__ FUNC4 (char) ; 
 long FUNC5 (char*) ; 
 int /*<<< orphan*/  pdbr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (char *arg, int from_tty)
{
  long pde_idx = -1, i;

  if (arg && *arg)
    {
      while (*arg && FUNC4(*arg))
	arg++;

      if (*arg)
	{
	  pde_idx = FUNC5 (arg);
	  if (pde_idx < 0 || pde_idx >= 1024)
	    FUNC1 ("Entry %ld is outside valid limits [0..1023].", pde_idx);
	}
    }

  pdbr = FUNC2 ();
  if (!pdbr)
    FUNC6 ("Access to Page Directories is not supported on this system.\n");
  else if (pde_idx >= 0)
    FUNC0 (FUNC3 (pde_idx), 1, 1, 0);
  else
    for (i = 0; i < 1024; i++)
      FUNC0 (FUNC3 (i), 1, 0, 0);
}