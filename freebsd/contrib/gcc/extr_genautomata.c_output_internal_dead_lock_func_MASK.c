#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* automaton_t ;
struct TYPE_6__ {TYPE_1__* first_automaton; } ;
struct TYPE_5__ {scalar_t__ locked_states; struct TYPE_5__* next_automaton; } ;

/* Variables and functions */
 char* CHIP_NAME ; 
 char* CHIP_PARAMETER_NAME ; 
 char* INTERNAL_DEAD_LOCK_FUNC_NAME ; 
 TYPE_4__* description ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  output_file ; 

__attribute__((used)) static void
FUNC3 (void)
{
  automaton_t automaton;

  FUNC0 (output_file, "static int\n%s (struct %s *ARG_UNUSED (%s))\n",
	   INTERNAL_DEAD_LOCK_FUNC_NAME, CHIP_NAME, CHIP_PARAMETER_NAME);
  FUNC0 (output_file, "{\n");
  for (automaton = description->first_automaton;
       automaton != NULL;
       automaton = automaton->next_automaton)
    if (automaton->locked_states)
      {
	FUNC0 (output_file, "  if (");
	FUNC2 (output_file, automaton);
	FUNC0 (output_file, " [%s->", CHIP_PARAMETER_NAME);
	FUNC1 (output_file, automaton);
	FUNC0 (output_file, "])\n    return 1/* TRUE */;\n");
      }
  FUNC0 (output_file, "  return 0/* FALSE */;\n}\n\n");
}