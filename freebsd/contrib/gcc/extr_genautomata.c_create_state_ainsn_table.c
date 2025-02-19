
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct state_ainsn_table {int dummy; } ;
typedef TYPE_1__* state_ainsn_table_t ;
typedef TYPE_2__* automaton_t ;
struct TYPE_7__ {int achieved_states_num; int insn_equiv_classes_num; } ;
struct TYPE_6__ {scalar_t__ max_comb_vect_el_value; scalar_t__ min_comb_vect_el_value; scalar_t__ max_base_vect_el_value; scalar_t__ min_base_vect_el_value; void* full_vect; scalar_t__ base_vect; void* check_vect; void* comb_vect; TYPE_2__* automaton; } ;


 void* VEC_alloc (int ,int ,int) ;
 int VEC_quick_push (int ,void*,int ) ;
 int VEC_safe_grow (int ,int ,scalar_t__,int) ;
 TYPE_1__* create_node (int) ;
 int heap ;
 int undefined_vect_el_value ;
 int vect_el_t ;

__attribute__((used)) static state_ainsn_table_t
create_state_ainsn_table (automaton_t automaton)
{
  state_ainsn_table_t tab;
  int full_vect_length;
  int i;

  tab = create_node (sizeof (struct state_ainsn_table));
  tab->automaton = automaton;

  tab->comb_vect = VEC_alloc (vect_el_t,heap, 10000);
  tab->check_vect = VEC_alloc (vect_el_t,heap, 10000);

  tab->base_vect = 0;
  VEC_safe_grow (vect_el_t,heap, tab->base_vect,
   automaton->achieved_states_num);

  full_vect_length = (automaton->insn_equiv_classes_num
                      * automaton->achieved_states_num);
  tab->full_vect = VEC_alloc (vect_el_t,heap, full_vect_length);
  for (i = 0; i < full_vect_length; i++)
    VEC_quick_push (vect_el_t, tab->full_vect, undefined_vect_el_value);

  tab->min_base_vect_el_value = 0;
  tab->max_base_vect_el_value = 0;
  tab->min_comb_vect_el_value = 0;
  tab->max_comb_vect_el_value = 0;
  return tab;
}
