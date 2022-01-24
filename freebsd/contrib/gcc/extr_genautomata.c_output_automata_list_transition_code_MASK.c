#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* automata_list_el_t ;
struct TYPE_12__ {int insn_equiv_classes_num; int achieved_states_num; int /*<<< orphan*/  trans_table; } ;
struct TYPE_11__ {TYPE_2__* automaton; struct TYPE_11__* next_automata_list_el; } ;

/* Variables and functions */
 char* CHIP_PARAMETER_NAME ; 
 char* INTERNAL_INSN_CODE_NAME ; 
 char* INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME ; 
 char* TEMPORARY_VARIABLE_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10 (automata_list_el_t automata_list)
{
  automata_list_el_t el, next_el;

  FUNC1 (output_file, "      {\n");
  if (automata_list != NULL && automata_list->next_automata_list_el != NULL)
    for (el = automata_list;; el = next_el)
      {
        next_el = el->next_automata_list_el;
        if (next_el == NULL)
          break;
        FUNC1 (output_file, "        ");
        FUNC3 (output_file, el->automaton);
	FUNC1 (output_file, " ");
        FUNC4 (output_file, el->automaton);
        FUNC1 (output_file, ";\n");
      }
  for (el = automata_list; el != NULL; el = el->next_automata_list_el)
    if (FUNC0 (el->automaton->trans_table))
      {
	FUNC1 (output_file, "\n        %s = ", TEMPORARY_VARIABLE_NAME);
	FUNC5 (output_file, el->automaton);
	FUNC1 (output_file, " [%s->", CHIP_PARAMETER_NAME);
	FUNC2 (output_file, el->automaton);
	FUNC1 (output_file, "] + ");
	FUNC9 (output_file, el->automaton);
	FUNC1 (output_file, " [%s];\n", INTERNAL_INSN_CODE_NAME);
	FUNC1 (output_file, "        if (");
	FUNC6 (output_file, el->automaton);
	FUNC1 (output_file, " [%s] != %s->",
		 TEMPORARY_VARIABLE_NAME, CHIP_PARAMETER_NAME);
	FUNC2 (output_file, el->automaton);
	FUNC1 (output_file, ")\n");
	FUNC1 (output_file, "          return %s (%s, %s);\n",
		 INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, INTERNAL_INSN_CODE_NAME,
		 CHIP_PARAMETER_NAME);
	FUNC1 (output_file, "        else\n");
	FUNC1 (output_file, "          ");
	if (el->next_automata_list_el != NULL)
	  FUNC4 (output_file, el->automaton);
	else
	  {
	    FUNC1 (output_file, "%s->", CHIP_PARAMETER_NAME);
	    FUNC2 (output_file, el->automaton);
	  }
	FUNC1 (output_file, " = ");
	FUNC7 (output_file, el->automaton);
	FUNC1 (output_file, " [%s];\n", TEMPORARY_VARIABLE_NAME);
      }
    else
      {
	FUNC1 (output_file, "\n        %s = ", TEMPORARY_VARIABLE_NAME);
	FUNC8 (output_file, el->automaton);
	FUNC1 (output_file, " [");
	FUNC9 (output_file, el->automaton);
	FUNC1 (output_file, " [%s] + ", INTERNAL_INSN_CODE_NAME);
	FUNC1 (output_file, "%s->", CHIP_PARAMETER_NAME);
	FUNC2 (output_file, el->automaton);
	FUNC1 (output_file, " * %d];\n",
		 el->automaton->insn_equiv_classes_num);
	FUNC1 (output_file, "        if (%s >= %d)\n",
		 TEMPORARY_VARIABLE_NAME, el->automaton->achieved_states_num);
	FUNC1 (output_file, "          return %s (%s, %s);\n",
		 INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, INTERNAL_INSN_CODE_NAME,
		 CHIP_PARAMETER_NAME);
	FUNC1 (output_file, "        else\n          ");
	if (el->next_automata_list_el != NULL)
	  FUNC4 (output_file, el->automaton);
	else
	  {
	    FUNC1 (output_file, "%s->", CHIP_PARAMETER_NAME);
	    FUNC2 (output_file, el->automaton);
	  }
	FUNC1 (output_file, " = %s;\n", TEMPORARY_VARIABLE_NAME);
      }
  if (automata_list != NULL && automata_list->next_automata_list_el != NULL)
    for (el = automata_list;; el = next_el)
      {
        next_el = el->next_automata_list_el;
        if (next_el == NULL)
          break;
        FUNC1 (output_file, "        %s->", CHIP_PARAMETER_NAME);
        FUNC2 (output_file, el->automaton);
        FUNC1 (output_file, " = ");
        FUNC4 (output_file, el->automaton);
        FUNC1 (output_file, ";\n");
      }
  FUNC1 (output_file, "        return -1;\n");
  FUNC1 (output_file, "      }\n");
}