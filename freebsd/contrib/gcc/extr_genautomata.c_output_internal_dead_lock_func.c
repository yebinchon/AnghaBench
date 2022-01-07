
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_6__ {TYPE_1__* first_automaton; } ;
struct TYPE_5__ {scalar_t__ locked_states; struct TYPE_5__* next_automaton; } ;


 char* CHIP_NAME ;
 char* CHIP_PARAMETER_NAME ;
 char* INTERNAL_DEAD_LOCK_FUNC_NAME ;
 TYPE_4__* description ;
 int fprintf (int ,char*,...) ;
 int output_chip_member_name (int ,TYPE_1__*) ;
 int output_dead_lock_vect_name (int ,TYPE_1__*) ;
 int output_file ;

__attribute__((used)) static void
output_internal_dead_lock_func (void)
{
  automaton_t automaton;

  fprintf (output_file, "static int\n%s (struct %s *ARG_UNUSED (%s))\n",
    INTERNAL_DEAD_LOCK_FUNC_NAME, CHIP_NAME, CHIP_PARAMETER_NAME);
  fprintf (output_file, "{\n");
  for (automaton = description->first_automaton;
       automaton != ((void*)0);
       automaton = automaton->next_automaton)
    if (automaton->locked_states)
      {
 fprintf (output_file, "  if (");
 output_dead_lock_vect_name (output_file, automaton);
 fprintf (output_file, " [%s->", CHIP_PARAMETER_NAME);
 output_chip_member_name (output_file, automaton);
 fprintf (output_file, "])\n    return 1/* TRUE */;\n");
      }
  fprintf (output_file, "  return 0/* FALSE */;\n}\n\n");
}
