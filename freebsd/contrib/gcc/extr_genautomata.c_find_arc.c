
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ state_t ;
typedef TYPE_1__* arc_t ;
typedef scalar_t__ ainsn_t ;
struct TYPE_6__ {scalar_t__ to_state; scalar_t__ insn; } ;


 TYPE_1__* first_out_arc (scalar_t__) ;
 TYPE_1__* next_out_arc (TYPE_1__*) ;

__attribute__((used)) static arc_t
find_arc (state_t from_state, state_t to_state, ainsn_t insn)
{
  arc_t arc;

  for (arc = first_out_arc (from_state); arc != ((void*)0); arc = next_out_arc (arc))
    if (arc->to_state == to_state && arc->insn == insn)
      return arc;
  return ((void*)0);
}
