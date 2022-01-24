#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct insn_reserv_decl {int /*<<< orphan*/  transformed_regexp; } ;
typedef  TYPE_1__* automaton_t ;
struct TYPE_6__ {int /*<<< orphan*/ * alt_states; int /*<<< orphan*/  sorted_alt_states; struct insn_reserv_decl* insn_reserv_decl; struct TYPE_6__* next_ainsn; } ;
struct TYPE_5__ {TYPE_3__* ainsn_list; } ;

/* Variables and functions */
 struct insn_reserv_decl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advance_cycle_insn_decl ; 
 TYPE_3__* curr_ainsn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (automaton_t automaton)
{
  struct insn_reserv_decl *reserv_decl;

  for (curr_ainsn = automaton->ainsn_list;
       curr_ainsn != NULL;
       curr_ainsn = curr_ainsn->next_ainsn)
    {
      reserv_decl = curr_ainsn->insn_reserv_decl;
      if (reserv_decl != FUNC0 (advance_cycle_insn_decl))
        {
          curr_ainsn->alt_states = NULL;
          FUNC1 (reserv_decl->transformed_regexp,
					   automaton, 0);
          curr_ainsn->sorted_alt_states
	    = FUNC2 (curr_ainsn->alt_states);
        }
    }
}