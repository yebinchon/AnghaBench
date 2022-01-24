#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* automaton_t ;
struct TYPE_11__ {int insn_num; } ;
struct TYPE_10__ {TYPE_1__* first_automaton; } ;
struct TYPE_9__ {struct TYPE_9__* next_automaton; } ;

/* Variables and functions */
 char* ADVANCE_CYCLE_VALUE_NAME ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advance_cycle_insn_decl ; 
 TYPE_7__* description ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  automaton_t automaton;

  FUNC2 ();
  for (automaton = description->first_automaton;
       automaton != NULL;
       automaton = automaton->next_automaton)
    {
      FUNC7 (automaton);
      FUNC6 (automaton);
      FUNC4 (automaton);
      FUNC3 (automaton);
      FUNC5 (automaton);
    }
  FUNC1 (output_file, "\n#define %s %d\n\n", ADVANCE_CYCLE_VALUE_NAME,
           FUNC0 (advance_cycle_insn_decl)->insn_num);
}