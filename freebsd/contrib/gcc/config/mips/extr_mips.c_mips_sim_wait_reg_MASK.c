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
struct mips_sim {unsigned int time; TYPE_1__* last_set; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {scalar_t__ insn; unsigned int time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_sim*) ; 

__attribute__((used)) static void
FUNC5 (struct mips_sim *state, rtx insn, rtx reg)
{
  unsigned int i;

  for (i = 0; i < FUNC1 (FUNC2 (reg), FUNC0 (reg)); i++)
    if (state->last_set[FUNC2 (reg) + i].insn != 0)
      {
	unsigned int t;

	t = state->last_set[FUNC2 (reg) + i].time;
	t += FUNC3 (state->last_set[FUNC2 (reg) + i].insn, insn);
	while (state->time < t)
	  FUNC4 (state);
    }
}