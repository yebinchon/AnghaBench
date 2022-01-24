#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct alt_state {int dummy; } ;
typedef  TYPE_1__* alt_state_t ;
struct TYPE_5__ {int /*<<< orphan*/ * next_sorted_alt_state; struct TYPE_5__* next_alt_state; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 int /*<<< orphan*/  allocated_alt_states_num ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* first_free_alt_state ; 

__attribute__((used)) static alt_state_t
FUNC1 (void)
{
  alt_state_t result;

  if (first_free_alt_state != NULL)
    {
      result = first_free_alt_state;
      first_free_alt_state = first_free_alt_state->next_alt_state;
    }
  else
    {
#ifndef NDEBUG
      allocated_alt_states_num++;
#endif
      result = FUNC0 (sizeof (struct alt_state));
    }
  result->state = NULL;
  result->next_alt_state = NULL;
  result->next_sorted_alt_state = NULL;
  return result;
}