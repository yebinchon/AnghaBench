#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_28__ ;
typedef  struct TYPE_38__   TYPE_26__ ;
typedef  struct TYPE_37__   TYPE_22__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_18__ ;
typedef  struct TYPE_34__   TYPE_16__ ;
typedef  struct TYPE_33__   TYPE_14__ ;
typedef  struct TYPE_32__   TYPE_13__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unit_set_el_t ;
struct bypass_decl {scalar_t__ latency; } ;
typedef  int /*<<< orphan*/  pattern_set_el_t ;
typedef  TYPE_1__* decl_t ;
struct TYPE_39__ {int /*<<< orphan*/  final_p; int /*<<< orphan*/  patterns_num; int /*<<< orphan*/  patterns; int /*<<< orphan*/  names_num; int /*<<< orphan*/  names; } ;
struct TYPE_38__ {int automaton_is_used; int /*<<< orphan*/  name; } ;
struct TYPE_37__ {size_t first_list_length; size_t all_names_num; int /*<<< orphan*/ * names; } ;
struct TYPE_36__ {scalar_t__ mode; int /*<<< orphan*/  pos; } ;
struct TYPE_35__ {int /*<<< orphan*/  final_p; int /*<<< orphan*/  patterns_num; int /*<<< orphan*/  patterns; int /*<<< orphan*/  names_num; int /*<<< orphan*/  names; } ;
struct TYPE_34__ {int /*<<< orphan*/  name; } ;
struct TYPE_33__ {int /*<<< orphan*/  name; int /*<<< orphan*/  unit_num; TYPE_26__* automaton_decl; int /*<<< orphan*/ * automaton_name; } ;
struct TYPE_32__ {int decls_num; TYPE_1__** decls; int /*<<< orphan*/  units_num; int /*<<< orphan*/  insns_num; } ;
struct TYPE_31__ {scalar_t__ default_latency; TYPE_10__* bypass_list; int /*<<< orphan*/  name; int /*<<< orphan*/  insn_num; } ;
struct TYPE_30__ {scalar_t__ latency; char* out_insn_name; char* in_insn_name; struct TYPE_30__* next; TYPE_11__* in_insn_reserv; TYPE_11__* out_insn_reserv; } ;

/* Variables and functions */
 TYPE_28__* FUNC0 (TYPE_1__*) ; 
 TYPE_26__* FUNC1 (TYPE_1__*) ; 
 TYPE_10__* FUNC2 (TYPE_1__*) ; 
 TYPE_22__* FUNC3 (TYPE_1__*) ; 
 TYPE_11__* FUNC4 (TYPE_1__*) ; 
 TYPE_18__* FUNC5 (TYPE_1__*) ; 
 TYPE_16__* FUNC6 (TYPE_1__*) ; 
 TYPE_14__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NOTHING_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_13__* description ; 
 scalar_t__ dm_absence ; 
 scalar_t__ dm_automaton ; 
 scalar_t__ dm_bypass ; 
 scalar_t__ dm_excl ; 
 scalar_t__ dm_insn_reserv ; 
 scalar_t__ dm_presence ; 
 scalar_t__ dm_reserv ; 
 scalar_t__ dm_unit ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,...) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 struct bypass_decl* FUNC12 (TYPE_10__*,TYPE_11__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (char*) ; 
 TYPE_1__* FUNC15 (TYPE_1__*) ; 
 TYPE_1__* FUNC16 (TYPE_1__*) ; 
 TYPE_1__* FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  w_flag ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static void
FUNC23 (void)
{
  decl_t decl;
  decl_t automaton_decl;
  decl_t decl_in_table;
  decl_t out_insn_reserv;
  decl_t in_insn_reserv;
  struct bypass_decl *bypass;
  int automaton_presence;
  int i;

  /* Checking repeated automata declarations.  */
  automaton_presence = 0;
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_automaton)
	{
	  automaton_presence = 1;
	  decl_in_table = FUNC15 (decl);
	  if (decl_in_table != decl)
	    {
	      if (!w_flag)
		FUNC10 ("repeated declaration of automaton `%s'",
		       FUNC1 (decl)->name);
	      else
		FUNC22 (0, "repeated declaration of automaton `%s'",
			 FUNC1 (decl)->name);
	    }
	}
    }
  /* Checking undeclared automata, repeated declarations (except for
     automata) and correctness of their attributes (insn latency times
     etc.).  */
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv)
	{
	  if (FUNC4 (decl)->default_latency < 0)
	    FUNC10 ("define_insn_reservation `%s' has negative latency time",
		   FUNC4 (decl)->name);
	  FUNC4 (decl)->insn_num = description->insns_num;
	  description->insns_num++;
	  decl_in_table = FUNC17 (decl);
	  if (decl_in_table != decl)
	    FUNC10 ("`%s' is already used as insn reservation name",
		   FUNC4 (decl)->name);
	}
      else if (decl->mode == dm_bypass)
	{
	  if (FUNC2 (decl)->latency < 0)
	    FUNC10 ("define_bypass `%s - %s' has negative latency time",
		   FUNC2 (decl)->out_insn_name,
		   FUNC2 (decl)->in_insn_name);
	}
      else if (decl->mode == dm_unit || decl->mode == dm_reserv)
	{
	  if (decl->mode == dm_unit)
	    {
	      FUNC7 (decl)->automaton_decl = NULL;
	      if (FUNC7 (decl)->automaton_name != NULL)
		{
		  automaton_decl
                    = FUNC11 (FUNC7 (decl)->automaton_name);
		  if (automaton_decl == NULL)
		    FUNC10 ("automaton `%s' is not declared",
			   FUNC7 (decl)->automaton_name);
		  else
		    {
		      FUNC1 (automaton_decl)->automaton_is_used = 1;
		      FUNC7 (decl)->automaton_decl
			= FUNC1 (automaton_decl);
		    }
		}
	      else if (automaton_presence)
		FUNC10 ("define_unit `%s' without automaton when one defined",
		       FUNC7 (decl)->name);
	      FUNC7 (decl)->unit_num = description->units_num;
	      description->units_num++;
	      if (FUNC21 (FUNC7 (decl)->name, NOTHING_NAME) == 0)
		{
		  FUNC10 ("`%s' is declared as cpu unit", NOTHING_NAME);
		  continue;
		}
	      decl_in_table = FUNC13 (FUNC7 (decl)->name);
	    }
	  else
	    {
	      if (FUNC21 (FUNC6 (decl)->name, NOTHING_NAME) == 0)
		{
		  FUNC10 ("`%s' is declared as cpu reservation", NOTHING_NAME);
		  continue;
		}
	      decl_in_table = FUNC13 (FUNC6 (decl)->name);
	    }
	  if (decl_in_table == NULL)
	    decl_in_table = FUNC16 (decl);
	  else
	    {
	      if (decl->mode == dm_unit)
		FUNC10 ("repeated declaration of unit `%s'",
		       FUNC7 (decl)->name);
	      else
		FUNC10 ("repeated declaration of reservation `%s'",
		       FUNC6 (decl)->name);
	    }
	}
    }
  /* Check bypasses and form list of bypasses for each (output)
     insn.  */
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_bypass)
	{
	  out_insn_reserv = FUNC14 (FUNC2 (decl)->out_insn_name);
	  in_insn_reserv = FUNC14 (FUNC2 (decl)->in_insn_name);
	  if (out_insn_reserv == NULL)
	    FUNC10 ("there is no insn reservation `%s'",
		   FUNC2 (decl)->out_insn_name);
	  else if (in_insn_reserv == NULL)
	    FUNC10 ("there is no insn reservation `%s'",
		   FUNC2 (decl)->in_insn_name);
	  else
	    {
	      FUNC2 (decl)->out_insn_reserv
		= FUNC4 (out_insn_reserv);
	      FUNC2 (decl)->in_insn_reserv
		= FUNC4 (in_insn_reserv);
	      bypass
		= FUNC12 (FUNC4 (out_insn_reserv)->bypass_list,
			       FUNC2 (decl)->in_insn_reserv);
	      if (bypass != NULL)
		{
		  if (FUNC2 (decl)->latency == bypass->latency)
		    {
		      if (!w_flag)
			FUNC10
			  ("the same bypass `%s - %s' is already defined",
			   FUNC2 (decl)->out_insn_name,
			   FUNC2 (decl)->in_insn_name);
		      else
			FUNC22
			  (0, "the same bypass `%s - %s' is already defined",
			   FUNC2 (decl)->out_insn_name,
			   FUNC2 (decl)->in_insn_name);
		    }
		  else
		    FUNC10 ("bypass `%s - %s' is already defined",
			   FUNC2 (decl)->out_insn_name,
			   FUNC2 (decl)->in_insn_name);
		}
	      else
		{
		  FUNC2 (decl)->next
		    = FUNC4 (out_insn_reserv)->bypass_list;
		  FUNC4 (out_insn_reserv)->bypass_list
		    = FUNC2 (decl);
		}
	    }
	}
    }

  /* Check exclusion set declarations and form exclusion sets.  */
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_excl)
	{
	  unit_set_el_t unit_set_el_list;
	  unit_set_el_t unit_set_el_list_2;

	  unit_set_el_list
            = FUNC18 (FUNC3 (decl)->names,
			     FUNC3 (decl)->first_list_length, decl->pos);
	  unit_set_el_list_2
	    = FUNC18 (&FUNC3 (decl)->names
			     [FUNC3 (decl)->first_list_length],
                             FUNC3 (decl)->all_names_num
                             - FUNC3 (decl)->first_list_length,
                             decl->pos);
	  FUNC8 (unit_set_el_list, unit_set_el_list_2, decl->pos);
	  FUNC8 (unit_set_el_list_2, unit_set_el_list, decl->pos);
	}
    }

  /* Check presence set declarations and form presence sets.  */
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_presence)
	{
	  unit_set_el_t unit_set_el_list;
	  pattern_set_el_t pattern_set_el_list;

	  unit_set_el_list
            = FUNC19
	      (FUNC5 (decl)->names, FUNC5 (decl)->names_num,
	       decl->pos, TRUE, FUNC5 (decl)->final_p);
	  pattern_set_el_list
	    = FUNC20
	      (FUNC5 (decl)->patterns,
	       FUNC5 (decl)->patterns_num,
	       decl->pos, TRUE, FUNC5 (decl)->final_p);
	  FUNC9 (unit_set_el_list, pattern_set_el_list,
				decl->pos, TRUE,
				FUNC5 (decl)->final_p);
	}
    }

  /* Check absence set declarations and form absence sets.  */
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_absence)
	{
	  unit_set_el_t unit_set_el_list;
	  pattern_set_el_t pattern_set_el_list;

	  unit_set_el_list
            = FUNC19
	      (FUNC0 (decl)->names, FUNC0 (decl)->names_num,
	       decl->pos, FALSE, FUNC0 (decl)->final_p);
	  pattern_set_el_list
	    = FUNC20
	      (FUNC0 (decl)->patterns,
	       FUNC0 (decl)->patterns_num,
	       decl->pos, FALSE, FUNC0 (decl)->final_p);
	  FUNC9 (unit_set_el_list, pattern_set_el_list,
				decl->pos, FALSE,
				FUNC0 (decl)->final_p);
	}
    }
}