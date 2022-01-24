#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* state_t ;
typedef  int /*<<< orphan*/  reserv_sets_t ;
struct TYPE_8__ {int /*<<< orphan*/  reservs; int /*<<< orphan*/  automaton; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static state_t
FUNC5 (state_t state, reserv_sets_t reservs)
{
  state_t result;
  state_t state_in_table;

  result = FUNC1 (1, state->automaton);
  FUNC4 (result->reservs, state->reservs);
  FUNC3 (result->reservs, result->reservs, reservs);
  state_in_table = FUNC2 (result);
  if (result != state_in_table)
    {
      FUNC0 (result);
      result = state_in_table;
    }
  return result;
}