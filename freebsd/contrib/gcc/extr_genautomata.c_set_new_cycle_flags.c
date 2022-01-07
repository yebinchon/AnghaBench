
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int state_t ;
typedef TYPE_3__* arc_t ;
struct TYPE_9__ {TYPE_2__* to_state; TYPE_1__* insn; } ;
struct TYPE_8__ {int new_cycle_p; } ;
struct TYPE_7__ {scalar_t__ insn_reserv_decl; } ;


 scalar_t__ DECL_INSN_RESERV (int ) ;
 int advance_cycle_insn_decl ;
 TYPE_3__* first_out_arc (int ) ;
 TYPE_3__* next_out_arc (TYPE_3__*) ;

__attribute__((used)) static void
set_new_cycle_flags (state_t state)
{
  arc_t arc;

  for (arc = first_out_arc (state); arc != ((void*)0); arc = next_out_arc (arc))
    if (arc->insn->insn_reserv_decl
 == DECL_INSN_RESERV (advance_cycle_insn_decl))
      arc->to_state->new_cycle_p = 1;
}
