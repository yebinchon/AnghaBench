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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4 (rtx x, int n)
{
  int i,count;
  rtx insn;

  count = n == 0 ? 1 : n < 0 ? -n : n;

  /* If we are printing a window, back up to the start.  */

  if (n < 0)
    for (i = count / 2; i > 0; i--)
      {
	if (FUNC1 (x) == 0)
	  break;
	x = FUNC1 (x);
      }

  for (i = count, insn = x; i > 0 && insn != 0; i--, insn = FUNC0 (insn))
    {
      FUNC2 (insn);
      FUNC3 (stderr, "\n");
    }
}