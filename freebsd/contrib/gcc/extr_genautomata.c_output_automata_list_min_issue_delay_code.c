
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
typedef TYPE_2__* automata_list_el_t ;
struct TYPE_8__ {TYPE_1__* automaton; struct TYPE_8__* next_automata_list_el; } ;
struct TYPE_7__ {int min_issue_delay_table_compression_factor; int insn_equiv_classes_num; } ;


 char* CHIP_PARAMETER_NAME ;
 char* INTERNAL_INSN_CODE_NAME ;
 char* RESULT_VARIABLE_NAME ;
 char* TEMPORARY_VARIABLE_NAME ;
 int fprintf (int ,char*,...) ;
 int output_chip_member_name (int ,TYPE_1__*) ;
 int output_file ;
 int output_min_issue_delay_vect_name (int ,TYPE_1__*) ;
 int output_translate_vect_name (int ,TYPE_1__*) ;

__attribute__((used)) static void
output_automata_list_min_issue_delay_code (automata_list_el_t automata_list)
{
  automata_list_el_t el;
  automaton_t automaton;

  for (el = automata_list; el != ((void*)0); el = el->next_automata_list_el)
    {
      automaton = el->automaton;
      fprintf (output_file, "\n      %s = ", TEMPORARY_VARIABLE_NAME);
      output_min_issue_delay_vect_name (output_file, automaton);
      fprintf (output_file,
        (automaton->min_issue_delay_table_compression_factor != 1
  ? " [(" : " ["));
      output_translate_vect_name (output_file, automaton);
      fprintf (output_file, " [%s] + ", INTERNAL_INSN_CODE_NAME);
      fprintf (output_file, "%s->", CHIP_PARAMETER_NAME);
      output_chip_member_name (output_file, automaton);
      fprintf (output_file, " * %d", automaton->insn_equiv_classes_num);
      if (automaton->min_issue_delay_table_compression_factor == 1)
 fprintf (output_file, "];\n");
      else
 {
   fprintf (output_file, ") / %d];\n",
     automaton->min_issue_delay_table_compression_factor);
   fprintf (output_file, "      %s = (%s >> (8 - (",
     TEMPORARY_VARIABLE_NAME, TEMPORARY_VARIABLE_NAME);
   output_translate_vect_name (output_file, automaton);
   fprintf
     (output_file, " [%s] %% %d + 1) * %d)) & %d;\n",
      INTERNAL_INSN_CODE_NAME,
      automaton->min_issue_delay_table_compression_factor,
      8 / automaton->min_issue_delay_table_compression_factor,
      (1 << (8 / automaton->min_issue_delay_table_compression_factor))
      - 1);
 }
      if (el == automata_list)
 fprintf (output_file, "      %s = %s;\n",
   RESULT_VARIABLE_NAME, TEMPORARY_VARIABLE_NAME);
      else
 {
   fprintf (output_file, "      if (%s > %s)\n",
     TEMPORARY_VARIABLE_NAME, RESULT_VARIABLE_NAME);
   fprintf (output_file, "        %s = %s;\n",
     RESULT_VARIABLE_NAME, TEMPORARY_VARIABLE_NAME);
 }
    }
  fprintf (output_file, "      break;\n\n");
}
