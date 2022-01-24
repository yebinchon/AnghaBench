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
 scalar_t__ MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ volatile_ok ; 

int
FUNC7 (rtx insn, int opnum)
{
  rtx set, mem;

  set = FUNC2 (insn);
  if (FUNC0 (set) == PARALLEL)
    set = FUNC5 (set, 0, 0);
  FUNC6 (FUNC0 (set) == SET);
  mem = FUNC4 (set, opnum);
  while (FUNC0 (mem) == SUBREG)
    mem = FUNC3 (mem);
  FUNC6 (FUNC0 (mem) == MEM);
  return (volatile_ok || !FUNC1 (mem));
}