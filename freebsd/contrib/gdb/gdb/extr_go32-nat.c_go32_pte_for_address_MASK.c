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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  pdbr ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (char *arg, int from_tty)
{
  CORE_ADDR addr = 0, i;

  if (arg && *arg)
    {
      while (*arg && FUNC5(*arg))
	arg++;

      if (*arg)
	addr = FUNC6 (arg);
    }
  if (!addr)
    FUNC1 ("linear address");

  pdbr = FUNC2 ();
  if (!pdbr)
    FUNC8 ("Access to Page Tables is not supported on this system.\n");
  else
    {
      int pde_idx = (addr >> 22) & 0x3ff;
      int pte_idx = (addr >> 12) & 0x3ff;
      unsigned offs = addr & 0xfff;

      FUNC7 ("Page Table entry for address 0x%llx:\n",
		       (unsigned long long)addr);
      FUNC0 (FUNC4 (FUNC3 (pde_idx), pte_idx), 0, 1, offs);
    }
}