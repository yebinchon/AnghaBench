
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_7__ {int full_vect; int comb_vect; } ;
struct TYPE_6__ {int insns_num; TYPE_1__* first_automaton; } ;
struct TYPE_5__ {int NDFA_states_num; int NDFA_arcs_num; int DFA_states_num; int DFA_arcs_num; int minimal_DFA_states_num; int minimal_DFA_arcs_num; int insn_equiv_classes_num; int locked_states; TYPE_4__* trans_table; int min_issue_delay_table_compression_factor; struct TYPE_5__* next_automaton; } ;
typedef int FILE ;


 scalar_t__ VEC_length (int ,int ) ;
 int allocated_alt_states_num ;
 int allocated_arcs_num ;
 int allocated_states_num ;
 scalar_t__ comb_vect_p (TYPE_4__*) ;
 TYPE_3__* description ;
 int fprintf (int *,char*,...) ;
 int no_minimization_flag ;
 int output_automaton_name (int *,TYPE_1__*) ;
 int vect_el_t ;

__attribute__((used)) static void
output_statistics (FILE *f)
{
  automaton_t automaton;
  int states_num;

  int transition_comb_vect_els = 0;
  int transition_full_vect_els = 0;
  int min_issue_delay_vect_els = 0;
  int locked_states = 0;


  for (automaton = description->first_automaton;
       automaton != ((void*)0);
       automaton = automaton->next_automaton)
    {
      fprintf (f, "\nAutomaton ");
      output_automaton_name (f, automaton);
      fprintf (f, "\n    %5d NDFA states,          %5d NDFA arcs\n",
        automaton->NDFA_states_num, automaton->NDFA_arcs_num);
      fprintf (f, "    %5d DFA states,           %5d DFA arcs\n",
        automaton->DFA_states_num, automaton->DFA_arcs_num);
      states_num = automaton->DFA_states_num;
      if (!no_minimization_flag)
 {
   fprintf (f, "    %5d minimal DFA states,   %5d minimal DFA arcs\n",
     automaton->minimal_DFA_states_num,
     automaton->minimal_DFA_arcs_num);
   states_num = automaton->minimal_DFA_states_num;
 }
      fprintf (f, "    %5d all insns      %5d insn equivalence classes\n",
        description->insns_num, automaton->insn_equiv_classes_num);
      fprintf (f, "    %d locked states\n", automaton->locked_states);

      fprintf
 (f, "%5ld transition comb vector els, %5ld trans table els: %s\n",
  (long) VEC_length (vect_el_t, automaton->trans_table->comb_vect),
  (long) VEC_length (vect_el_t, automaton->trans_table->full_vect),
  (comb_vect_p (automaton->trans_table)
   ? "use comb vect" : "use simple vect"));
      fprintf
        (f, "%5ld min delay table els, compression factor %d\n",
         (long) states_num * automaton->insn_equiv_classes_num,
  automaton->min_issue_delay_table_compression_factor);
      transition_comb_vect_els
 += VEC_length (vect_el_t, automaton->trans_table->comb_vect);
      transition_full_vect_els
        += VEC_length (vect_el_t, automaton->trans_table->full_vect);
      min_issue_delay_vect_els
 += states_num * automaton->insn_equiv_classes_num;
      locked_states
 += automaton->locked_states;

    }

  fprintf (f, "\n%5d all allocated states,     %5d all allocated arcs\n",
    allocated_states_num, allocated_arcs_num);
  fprintf (f, "%5d all allocated alternative states\n",
    allocated_alt_states_num);
  fprintf (f, "%5d all transition comb vector els, %5d all trans table els\n",
    transition_comb_vect_els, transition_full_vect_els);
  fprintf (f, "%5d all min delay table els\n", min_issue_delay_vect_els);
  fprintf (f, "%5d all locked states\n", locked_states);

}
