#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* automaton_t ;
struct TYPE_9__ {int NDFA_states_num; int NDFA_arcs_num; int DFA_states_num; int DFA_arcs_num; int minimal_DFA_states_num; int minimal_DFA_arcs_num; TYPE_1__* corresponding_automaton_decl; } ;
struct TYPE_8__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDFA_time ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NDFA_to_DFA_time ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  minimize_time ; 
 int /*<<< orphan*/  no_minimization_flag ; 
 scalar_t__ progress_flag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (automaton_t automaton)
{
  int states_num;
  int arcs_num;

  FUNC6 (&NDFA_time);
  if (progress_flag)
    {
      if (automaton->corresponding_automaton_decl == NULL)
	FUNC2 (stderr, "Create anonymous automaton");
      else
	FUNC2 (stderr, "Create automaton `%s'",
		 automaton->corresponding_automaton_decl->name);
      FUNC2 (stderr, " (1 dot is 100 new states):");
    }
  FUNC3 (automaton);
  if (progress_flag)
    FUNC2 (stderr, " done\n");
  FUNC5 (&NDFA_time);
  FUNC1 (automaton, &states_num, &arcs_num);
  automaton->NDFA_states_num = states_num;
  automaton->NDFA_arcs_num = arcs_num;
  FUNC6 (&NDFA_to_DFA_time);
  if (progress_flag)
    {
      if (automaton->corresponding_automaton_decl == NULL)
	FUNC2 (stderr, "Make anonymous DFA");
      else
	FUNC2 (stderr, "Make DFA `%s'",
		 automaton->corresponding_automaton_decl->name);
      FUNC2 (stderr, " (1 dot is 100 new states):");
    }
  FUNC0 (automaton);
  if (progress_flag)
    FUNC2 (stderr, " done\n");
  FUNC5 (&NDFA_to_DFA_time);
  FUNC1 (automaton, &states_num, &arcs_num);
  automaton->DFA_states_num = states_num;
  automaton->DFA_arcs_num = arcs_num;
  if (!no_minimization_flag)
    {
      FUNC6 (&minimize_time);
      if (progress_flag)
	{
	  if (automaton->corresponding_automaton_decl == NULL)
	    FUNC2 (stderr, "Minimize anonymous DFA...");
	  else
	    FUNC2 (stderr, "Minimize DFA `%s'...",
		     automaton->corresponding_automaton_decl->name);
	}
      FUNC4 (automaton);
      if (progress_flag)
	FUNC2 (stderr, "done\n");
      FUNC5 (&minimize_time);
      FUNC1 (automaton, &states_num, &arcs_num);
      automaton->minimal_DFA_states_num = states_num;
      automaton->minimal_DFA_arcs_num = arcs_num;
    }
}