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
struct mips_sim {scalar_t__ insns_left; int /*<<< orphan*/  dfa_state; } ;
typedef  int /*<<< orphan*/  state_t ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_sim*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct mips_sim *state, rtx insn)
{
  state_t tmp_state;

  tmp_state = FUNC0 (FUNC3 ());
  while (state->insns_left == 0
	 || (FUNC1 (tmp_state, state->dfa_state, FUNC3 ()),
	     FUNC4 (tmp_state, insn) >= 0))
    FUNC2 (state);
}