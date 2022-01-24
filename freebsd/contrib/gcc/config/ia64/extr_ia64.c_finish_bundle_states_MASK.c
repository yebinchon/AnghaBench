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
struct bundle_state {struct bundle_state* dfa_state; struct bundle_state* allocated_states_chain; } ;

/* Variables and functions */
 struct bundle_state* allocated_bundle_states_chain ; 
 int /*<<< orphan*/  FUNC0 (struct bundle_state*) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  struct bundle_state *curr_state, *next_state;

  for (curr_state = allocated_bundle_states_chain;
       curr_state != NULL;
       curr_state = next_state)
    {
      next_state = curr_state->allocated_states_chain;
      FUNC0 (curr_state->dfa_state);
      FUNC0 (curr_state);
    }
}