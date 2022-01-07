
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_11__ {int insn_num; } ;
struct TYPE_10__ {TYPE_1__* first_automaton; } ;
struct TYPE_9__ {struct TYPE_9__* next_automaton; } ;


 char* ADVANCE_CYCLE_VALUE_NAME ;
 TYPE_8__* DECL_INSN_RESERV (int ) ;
 int advance_cycle_insn_decl ;
 TYPE_7__* description ;
 int fprintf (int ,char*,char*,int) ;
 int initiate_min_issue_delay_pass_states () ;
 int output_dead_lock_vect (TYPE_1__*) ;
 int output_file ;
 int output_min_issue_delay_table (TYPE_1__*) ;
 int output_reserved_units_table (TYPE_1__*) ;
 int output_trans_table (TYPE_1__*) ;
 int output_translate_vect (TYPE_1__*) ;

__attribute__((used)) static void
output_tables (void)
{
  automaton_t automaton;

  initiate_min_issue_delay_pass_states ();
  for (automaton = description->first_automaton;
       automaton != ((void*)0);
       automaton = automaton->next_automaton)
    {
      output_translate_vect (automaton);
      output_trans_table (automaton);
      output_min_issue_delay_table (automaton);
      output_dead_lock_vect (automaton);
      output_reserved_units_table (automaton);
    }
  fprintf (output_file, "\n#define %s %d\n\n", ADVANCE_CYCLE_VALUE_NAME,
           DECL_INSN_RESERV (advance_cycle_insn_decl)->insn_num);
}
