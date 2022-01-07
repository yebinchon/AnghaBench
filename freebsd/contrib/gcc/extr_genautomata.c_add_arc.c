
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct arc {int dummy; } ;
typedef TYPE_1__* state_t ;
typedef TYPE_2__* arc_t ;
typedef TYPE_3__* ainsn_t ;
struct TYPE_16__ {int arc_exists_p; } ;
struct TYPE_15__ {int * next_arc_marked_by_insn; struct TYPE_15__* next_out_arc; TYPE_3__* insn; TYPE_1__* to_state; } ;
struct TYPE_14__ {int num_out_arcs; TYPE_2__* first_out_arc; } ;


 int allocated_arcs_num ;
 TYPE_2__* create_node (int) ;
 TYPE_2__* find_arc (TYPE_1__*,TYPE_1__*,TYPE_3__*) ;
 TYPE_2__* first_free_arc ;

__attribute__((used)) static arc_t
add_arc (state_t from_state, state_t to_state, ainsn_t ainsn)
{
  arc_t new_arc;

  new_arc = find_arc (from_state, to_state, ainsn);
  if (new_arc != ((void*)0))
    return new_arc;
  if (first_free_arc == ((void*)0))
    {

      allocated_arcs_num++;

      new_arc = create_node (sizeof (struct arc));
      new_arc->to_state = ((void*)0);
      new_arc->insn = ((void*)0);
      new_arc->next_out_arc = ((void*)0);
    }
  else
    {
      new_arc = first_free_arc;
      first_free_arc = first_free_arc->next_out_arc;
    }
  new_arc->to_state = to_state;
  new_arc->insn = ainsn;
  ainsn->arc_exists_p = 1;
  new_arc->next_out_arc = from_state->first_out_arc;
  from_state->first_out_arc = new_arc;
  from_state->num_out_arcs++;
  new_arc->next_arc_marked_by_insn = ((void*)0);
  return new_arc;
}
