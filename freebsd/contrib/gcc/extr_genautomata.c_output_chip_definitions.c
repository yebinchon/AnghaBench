
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_6__ {TYPE_1__* first_automaton; } ;
struct TYPE_5__ {struct TYPE_5__* next_automaton; } ;


 char* CHIP_NAME ;
 TYPE_4__* description ;
 int fprintf (int ,char*,...) ;
 int output_chip_member_name (int ,TYPE_1__*) ;
 int output_file ;
 int output_state_member_type (int ,TYPE_1__*) ;

__attribute__((used)) static void
output_chip_definitions (void)
{
  automaton_t automaton;

  fprintf (output_file, "struct %s\n{\n", CHIP_NAME);
  for (automaton = description->first_automaton;
       automaton != ((void*)0);
       automaton = automaton->next_automaton)
    {
      fprintf (output_file, "  ");
      output_state_member_type (output_file, automaton);
      fprintf (output_file, " ");
      output_chip_member_name (output_file, automaton);
      fprintf (output_file, ";\n");
    }
  fprintf (output_file, "};\n\n");



}
