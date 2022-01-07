
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_7__ {TYPE_1__* first_automaton; } ;
struct TYPE_6__ {struct TYPE_6__* next_automaton; } ;


 TYPE_5__* description ;
 int fprintf (int ,char*) ;
 int output_automaton_name (int ,TYPE_1__*) ;
 int output_automaton_units (TYPE_1__*) ;
 int output_description_file ;
 int output_state ;
 int pass_states (TYPE_1__*,int ) ;

__attribute__((used)) static void
output_automaton_descriptions (void)
{
  automaton_t automaton;

  for (automaton = description->first_automaton;
       automaton != ((void*)0);
       automaton = automaton->next_automaton)
    {
      fprintf (output_description_file, "\nAutomaton ");
      output_automaton_name (output_description_file, automaton);
      fprintf (output_description_file, "\n");
      output_automaton_units (automaton);
      pass_states (automaton, output_state);
    }
}
