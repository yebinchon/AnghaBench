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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

rtx
FUNC6 (rtx addr)
{
  while (FUNC1 (addr) == PLUS)
    {
      if (FUNC1 (FUNC3 (addr, 0)) == REG
	  && FUNC2 (FUNC3 (addr, 0)) != 0)
	addr = FUNC3 (addr, 0);
      else if (FUNC1 (FUNC3 (addr, 1)) == REG
	       && FUNC2 (FUNC3 (addr, 1)) != 0)
	addr = FUNC3 (addr, 1);
      else if (FUNC0 (FUNC3 (addr, 0)))
	addr = FUNC3 (addr, 1);
      else if (FUNC0 (FUNC3 (addr, 1)))
	addr = FUNC3 (addr, 0);
      else
	FUNC5 ();
    }
  FUNC4 (FUNC1 (addr) == REG && FUNC2 (addr) != 0);
  return addr;
}