#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct state_ainsn_table {int dummy; } ;
typedef  TYPE_1__* state_ainsn_table_t ;
typedef  TYPE_2__* automaton_t ;
struct TYPE_7__ {int achieved_states_num; int insn_equiv_classes_num; } ;
struct TYPE_6__ {scalar_t__ max_comb_vect_el_value; scalar_t__ min_comb_vect_el_value; scalar_t__ max_base_vect_el_value; scalar_t__ min_base_vect_el_value; void* full_vect; scalar_t__ base_vect; void* check_vect; void* comb_vect; TYPE_2__* automaton; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  undefined_vect_el_value ; 
 int /*<<< orphan*/  vect_el_t ; 

__attribute__((used)) static state_ainsn_table_t
FUNC4 (automaton_t automaton)
{
  state_ainsn_table_t tab;
  int full_vect_length;
  int i;

  tab = FUNC3 (sizeof (struct state_ainsn_table));
  tab->automaton = automaton;

  tab->comb_vect  = FUNC0 (vect_el_t,heap, 10000);
  tab->check_vect = FUNC0 (vect_el_t,heap, 10000);

  tab->base_vect  = 0;
  FUNC2 (vect_el_t,heap, tab->base_vect,
		 automaton->achieved_states_num);

  full_vect_length = (automaton->insn_equiv_classes_num
                      * automaton->achieved_states_num);
  tab->full_vect  = FUNC0 (vect_el_t,heap, full_vect_length);
  for (i = 0; i < full_vect_length; i++)
    FUNC1 (vect_el_t, tab->full_vect, undefined_vect_el_value);

  tab->min_base_vect_el_value = 0;
  tab->max_base_vect_el_value = 0;
  tab->min_comb_vect_el_value = 0;
  tab->max_comb_vect_el_value = 0;
  return tab;
}