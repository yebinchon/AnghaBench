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
struct mips_sim {int /*<<< orphan*/  dfa_state; int /*<<< orphan*/  issue_rate; int /*<<< orphan*/  insns_left; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (struct mips_sim *state)
{
  state->time++;
  state->insns_left = state->issue_rate;
  FUNC0 (state->dfa_state, 0);
}