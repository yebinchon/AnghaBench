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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (long n, int force)
{
  unsigned long pde = FUNC1 (n);

  if ((pde & 1) != 0)
    {
      int i;

      FUNC3 ("Page Table pointed to by Page Directory entry 0x%lx:\n", n);
      for (i = 0; i < 1024; i++)
	FUNC0 (FUNC2 (pde, i), 0, 0, 0);
      FUNC4 ("\n");
    }
  else if (force)
    FUNC3 ("Page Table not present; value=0x%lx.\n", pde >> 1);
}