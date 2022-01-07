
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* automaton_t ;
struct TYPE_9__ {int NDFA_states_num; int NDFA_arcs_num; int DFA_states_num; int DFA_arcs_num; int minimal_DFA_states_num; int minimal_DFA_arcs_num; TYPE_1__* corresponding_automaton_decl; } ;
struct TYPE_8__ {char* name; } ;


 int NDFA_time ;
 int NDFA_to_DFA (TYPE_2__*) ;
 int NDFA_to_DFA_time ;
 int count_states_and_arcs (TYPE_2__*,int*,int*) ;
 int fprintf (int ,char*,...) ;
 int make_automaton (TYPE_2__*) ;
 int minimize_DFA (TYPE_2__*) ;
 int minimize_time ;
 int no_minimization_flag ;
 scalar_t__ progress_flag ;
 int stderr ;
 int ticker_off (int *) ;
 int ticker_on (int *) ;

__attribute__((used)) static void
build_automaton (automaton_t automaton)
{
  int states_num;
  int arcs_num;

  ticker_on (&NDFA_time);
  if (progress_flag)
    {
      if (automaton->corresponding_automaton_decl == ((void*)0))
 fprintf (stderr, "Create anonymous automaton");
      else
 fprintf (stderr, "Create automaton `%s'",
   automaton->corresponding_automaton_decl->name);
      fprintf (stderr, " (1 dot is 100 new states):");
    }
  make_automaton (automaton);
  if (progress_flag)
    fprintf (stderr, " done\n");
  ticker_off (&NDFA_time);
  count_states_and_arcs (automaton, &states_num, &arcs_num);
  automaton->NDFA_states_num = states_num;
  automaton->NDFA_arcs_num = arcs_num;
  ticker_on (&NDFA_to_DFA_time);
  if (progress_flag)
    {
      if (automaton->corresponding_automaton_decl == ((void*)0))
 fprintf (stderr, "Make anonymous DFA");
      else
 fprintf (stderr, "Make DFA `%s'",
   automaton->corresponding_automaton_decl->name);
      fprintf (stderr, " (1 dot is 100 new states):");
    }
  NDFA_to_DFA (automaton);
  if (progress_flag)
    fprintf (stderr, " done\n");
  ticker_off (&NDFA_to_DFA_time);
  count_states_and_arcs (automaton, &states_num, &arcs_num);
  automaton->DFA_states_num = states_num;
  automaton->DFA_arcs_num = arcs_num;
  if (!no_minimization_flag)
    {
      ticker_on (&minimize_time);
      if (progress_flag)
 {
   if (automaton->corresponding_automaton_decl == ((void*)0))
     fprintf (stderr, "Minimize anonymous DFA...");
   else
     fprintf (stderr, "Minimize DFA `%s'...",
       automaton->corresponding_automaton_decl->name);
 }
      minimize_DFA (automaton);
      if (progress_flag)
 fprintf (stderr, "done\n");
      ticker_off (&minimize_time);
      count_states_and_arcs (automaton, &states_num, &arcs_num);
      automaton->minimal_DFA_states_num = states_num;
      automaton->minimal_DFA_arcs_num = arcs_num;
    }
}
