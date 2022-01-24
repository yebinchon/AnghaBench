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
struct bundle_state {int /*<<< orphan*/  dfa_state; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct bundle_state*) ; 
 int /*<<< orphan*/  ia64_nop ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (struct bundle_state *curr_state, int nops_num)
{
  int i;

  for (i = 0; i < nops_num; i++)
    if (FUNC1 (curr_state->dfa_state, ia64_nop) >= 0)
      {
	FUNC0 (curr_state);
	return FALSE;
      }
  return TRUE;
}