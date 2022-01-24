#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* automaton_t ;
typedef  TYPE_2__* automata_list_el_t ;
struct TYPE_8__ {TYPE_1__* automaton; struct TYPE_8__* next_automata_list_el; } ;
struct TYPE_7__ {int min_issue_delay_table_compression_factor; int insn_equiv_classes_num; } ;

/* Variables and functions */
 char* CHIP_PARAMETER_NAME ; 
 char* INTERNAL_INSN_CODE_NAME ; 
 char* RESULT_VARIABLE_NAME ; 
 char* TEMPORARY_VARIABLE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (automata_list_el_t automata_list)
{
  automata_list_el_t el;
  automaton_t automaton;

  for (el = automata_list; el != NULL; el = el->next_automata_list_el)
    {
      automaton = el->automaton;
      FUNC0 (output_file, "\n      %s = ", TEMPORARY_VARIABLE_NAME);
      FUNC2 (output_file, automaton);
      FUNC0 (output_file,
	       (automaton->min_issue_delay_table_compression_factor != 1
		? " [(" : " ["));
      FUNC3 (output_file, automaton);
      FUNC0 (output_file, " [%s] + ", INTERNAL_INSN_CODE_NAME);
      FUNC0 (output_file, "%s->", CHIP_PARAMETER_NAME);
      FUNC1 (output_file, automaton);
      FUNC0 (output_file, " * %d", automaton->insn_equiv_classes_num);
      if (automaton->min_issue_delay_table_compression_factor == 1)
	FUNC0 (output_file, "];\n");
      else
	{
	  FUNC0 (output_file, ") / %d];\n",
		   automaton->min_issue_delay_table_compression_factor);
	  FUNC0 (output_file, "      %s = (%s >> (8 - (",
		   TEMPORARY_VARIABLE_NAME, TEMPORARY_VARIABLE_NAME);
	  FUNC3 (output_file, automaton);
	  FUNC0
	    (output_file, " [%s] %% %d + 1) * %d)) & %d;\n",
	     INTERNAL_INSN_CODE_NAME,
	     automaton->min_issue_delay_table_compression_factor,
	     8 / automaton->min_issue_delay_table_compression_factor,
	     (1 << (8 / automaton->min_issue_delay_table_compression_factor))
	     - 1);
	}
      if (el == automata_list)
	FUNC0 (output_file, "      %s = %s;\n",
		 RESULT_VARIABLE_NAME, TEMPORARY_VARIABLE_NAME);
      else
	{
	  FUNC0 (output_file, "      if (%s > %s)\n",
		   TEMPORARY_VARIABLE_NAME, RESULT_VARIABLE_NAME);
	  FUNC0 (output_file, "        %s = %s;\n",
		   RESULT_VARIABLE_NAME, TEMPORARY_VARIABLE_NAME);
	}
    }
  FUNC0 (output_file, "      break;\n\n");
}