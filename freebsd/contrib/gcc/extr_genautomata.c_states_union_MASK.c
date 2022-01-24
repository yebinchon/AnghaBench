#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* state_t ;
typedef  int /*<<< orphan*/  reserv_sets_t ;
struct TYPE_9__ {scalar_t__ automaton; int /*<<< orphan*/  reservs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,scalar_t__) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static state_t
FUNC6 (state_t state1, state_t state2, reserv_sets_t reservs)
{
  state_t result;
  state_t state_in_table;

  FUNC1 (state1->automaton == state2->automaton);
  result = FUNC2 (1, state1->automaton);
  FUNC5 (result->reservs, state1->reservs, state2->reservs);
  FUNC4 (result->reservs, result->reservs, reservs);
  state_in_table = FUNC3 (result);
  if (result != state_in_table)
    {
      FUNC0 (result);
      result = state_in_table;
    }
  return result;
}