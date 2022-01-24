#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct automaton {int dummy; } ;
typedef  TYPE_1__* decl_t ;
typedef  TYPE_2__* automaton_t ;
struct TYPE_15__ {int decls_num; TYPE_2__* first_automaton; TYPE_1__** decls; } ;
struct TYPE_14__ {int automaton_order_num; TYPE_10__* corresponding_automaton_decl; struct TYPE_14__* next_automaton; void* ainsn_list; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_12__ {char* name; TYPE_2__* corresponding_automaton; scalar_t__ automaton_is_used; } ;

/* Variables and functions */
 TYPE_10__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NDFA_time ; 
 int /*<<< orphan*/  NDFA_to_DFA_time ; 
 int automata_num ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_6__* description ; 
 scalar_t__ dm_automaton ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  equiv_time ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  minimize_time ; 
 scalar_t__ progress_flag ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void
FUNC14 (void)
{
  automaton_t curr_automaton;
  automaton_t prev_automaton;
  decl_t decl;
  int curr_automaton_num;
  int i;

  if (automata_num != 0)
    {
      FUNC13 ();
      for (prev_automaton = NULL, curr_automaton_num = 0;
           curr_automaton_num < automata_num;
           curr_automaton_num++, prev_automaton = curr_automaton)
        {
	  curr_automaton = FUNC4 (sizeof (struct automaton));
	  curr_automaton->ainsn_list = FUNC2 ();
	  curr_automaton->corresponding_automaton_decl = NULL;
	  curr_automaton->next_automaton = NULL;
          curr_automaton->automaton_order_num = curr_automaton_num;
          if (prev_automaton == NULL)
            description->first_automaton = curr_automaton;
          else
            prev_automaton->next_automaton = curr_automaton;
        }
    }
  else
    {
      curr_automaton_num = 0;
      prev_automaton = NULL;
      for (i = 0; i < description->decls_num; i++)
	{
	  decl = description->decls [i];
	  if (decl->mode == dm_automaton
	      && FUNC0 (decl)->automaton_is_used)
	    {
	      curr_automaton = FUNC4 (sizeof (struct automaton));
	      curr_automaton->ainsn_list = FUNC2 ();
	      curr_automaton->corresponding_automaton_decl
		= FUNC0 (decl);
	      curr_automaton->next_automaton = NULL;
	      FUNC0 (decl)->corresponding_automaton = curr_automaton;
	      curr_automaton->automaton_order_num = curr_automaton_num;
	      if (prev_automaton == NULL)
		description->first_automaton = curr_automaton;
	      else
		prev_automaton->next_automaton = curr_automaton;
	      curr_automaton_num++;
	      prev_automaton = curr_automaton;
	    }
	}
      if (curr_automaton_num == 0)
	{
	  curr_automaton = FUNC4 (sizeof (struct automaton));
	  curr_automaton->ainsn_list = FUNC2 ();
	  curr_automaton->corresponding_automaton_decl = NULL;
	  curr_automaton->next_automaton = NULL;
	  description->first_automaton = curr_automaton;
	}
      FUNC12 ();
    }
  NDFA_time = FUNC5 ();
  FUNC10 (&NDFA_time);
  NDFA_to_DFA_time = FUNC5 ();
  FUNC10 (&NDFA_to_DFA_time);
  minimize_time = FUNC5 ();
  FUNC10 (&minimize_time);
  equiv_time = FUNC5 ();
  FUNC10 (&equiv_time);
  for (curr_automaton = description->first_automaton;
       curr_automaton != NULL;
       curr_automaton = curr_automaton->next_automaton)
    {
      if (progress_flag)
	{
	  if (curr_automaton->corresponding_automaton_decl == NULL)
	    FUNC8 (stderr, "Prepare anonymous automaton creation ... ");
	  else
	    FUNC8 (stderr, "Prepare automaton `%s' creation...",
		     curr_automaton->corresponding_automaton_decl->name);
	}
      FUNC3 (curr_automaton);
      FUNC7 (curr_automaton);
      if (progress_flag)
	FUNC8 (stderr, "done\n");
      FUNC1 (curr_automaton);
      FUNC6 (curr_automaton);
      FUNC11 (&equiv_time);
      FUNC9 (curr_automaton);
      FUNC10 (&equiv_time);
    }
}