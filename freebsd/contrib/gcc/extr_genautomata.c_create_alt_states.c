
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct insn_reserv_decl {int transformed_regexp; } ;
typedef TYPE_1__* automaton_t ;
struct TYPE_6__ {int * alt_states; int sorted_alt_states; struct insn_reserv_decl* insn_reserv_decl; struct TYPE_6__* next_ainsn; } ;
struct TYPE_5__ {TYPE_3__* ainsn_list; } ;


 struct insn_reserv_decl* DECL_INSN_RESERV (int ) ;
 int advance_cycle_insn_decl ;
 TYPE_3__* curr_ainsn ;
 int process_alts_for_forming_states (int ,TYPE_1__*,int ) ;
 int uniq_sort_alt_states (int *) ;

__attribute__((used)) static void
create_alt_states (automaton_t automaton)
{
  struct insn_reserv_decl *reserv_decl;

  for (curr_ainsn = automaton->ainsn_list;
       curr_ainsn != ((void*)0);
       curr_ainsn = curr_ainsn->next_ainsn)
    {
      reserv_decl = curr_ainsn->insn_reserv_decl;
      if (reserv_decl != DECL_INSN_RESERV (advance_cycle_insn_decl))
        {
          curr_ainsn->alt_states = ((void*)0);
          process_alts_for_forming_states (reserv_decl->transformed_regexp,
        automaton, 0);
          curr_ainsn->sorted_alt_states
     = uniq_sort_alt_states (curr_ainsn->alt_states);
        }
    }
}
