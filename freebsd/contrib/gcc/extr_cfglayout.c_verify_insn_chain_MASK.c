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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 

void
FUNC5 (void)
{
  rtx x, prevx, nextx;
  int insn_cnt1, insn_cnt2;

  for (prevx = NULL, insn_cnt1 = 1, x = FUNC3 ();
       x != 0;
       prevx = x, insn_cnt1++, x = FUNC0 (x))
    FUNC2 (FUNC1 (x) == prevx);

  FUNC2 (prevx == FUNC4 ());

  for (nextx = NULL, insn_cnt2 = 1, x = FUNC4 ();
       x != 0;
       nextx = x, insn_cnt2++, x = FUNC1 (x))
    FUNC2 (FUNC0 (x) == nextx);

  FUNC2 (insn_cnt1 == insn_cnt2);
}