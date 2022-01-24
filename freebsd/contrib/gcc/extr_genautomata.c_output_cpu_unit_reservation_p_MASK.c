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
struct TYPE_6__ {int query_units_num; TYPE_1__* first_automaton; } ;
struct TYPE_5__ {struct TYPE_5__* next_automaton; } ;

/* Variables and functions */
 char* CHIP_NAME ; 
 char* CPU_CODE_PARAMETER_NAME ; 
 char* CPU_UNIT_RESERVATION_P_FUNC_NAME ; 
 char* STATE_NAME ; 
 char* STATE_TYPE_NAME ; 
 TYPE_4__* description ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  automaton_t automaton;

  FUNC0 (output_file, "int\n%s (%s %s, int %s)\n",
	   CPU_UNIT_RESERVATION_P_FUNC_NAME,
	   STATE_TYPE_NAME, STATE_NAME,
	   CPU_CODE_PARAMETER_NAME);
  FUNC0 (output_file, "{\n  gcc_assert (%s >= 0 && %s < %d);\n",
	   CPU_CODE_PARAMETER_NAME, CPU_CODE_PARAMETER_NAME,
	   description->query_units_num);
  if (description->query_units_num > 0)
    for (automaton = description->first_automaton;
	 automaton != NULL;
	 automaton = automaton->next_automaton)
      {
	FUNC0 (output_file, "  if ((");
	FUNC2 (output_file, automaton);
	FUNC0 (output_file, " [((struct %s *) %s)->", CHIP_NAME, STATE_NAME);
	FUNC1 (output_file, automaton);
	FUNC0 (output_file, " * %d + %s / 8] >> (%s %% 8)) & 1)\n",
		 (description->query_units_num + 7) / 8,
		 CPU_CODE_PARAMETER_NAME, CPU_CODE_PARAMETER_NAME);
	FUNC0 (output_file, "    return 1;\n");
      }
  FUNC0 (output_file, "  return 0;\n}\n\n");
}