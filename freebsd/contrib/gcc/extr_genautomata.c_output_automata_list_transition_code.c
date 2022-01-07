
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* automata_list_el_t ;
struct TYPE_12__ {int insn_equiv_classes_num; int achieved_states_num; int trans_table; } ;
struct TYPE_11__ {TYPE_2__* automaton; struct TYPE_11__* next_automata_list_el; } ;


 char* CHIP_PARAMETER_NAME ;
 char* INTERNAL_INSN_CODE_NAME ;
 char* INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME ;
 char* TEMPORARY_VARIABLE_NAME ;
 scalar_t__ comb_vect_p (int ) ;
 int fprintf (int ,char*,...) ;
 int output_chip_member_name (int ,TYPE_2__*) ;
 int output_file ;
 int output_state_member_type (int ,TYPE_2__*) ;
 int output_temp_chip_member_name (int ,TYPE_2__*) ;
 int output_trans_base_vect_name (int ,TYPE_2__*) ;
 int output_trans_check_vect_name (int ,TYPE_2__*) ;
 int output_trans_comb_vect_name (int ,TYPE_2__*) ;
 int output_trans_full_vect_name (int ,TYPE_2__*) ;
 int output_translate_vect_name (int ,TYPE_2__*) ;

__attribute__((used)) static void
output_automata_list_transition_code (automata_list_el_t automata_list)
{
  automata_list_el_t el, next_el;

  fprintf (output_file, "      {\n");
  if (automata_list != ((void*)0) && automata_list->next_automata_list_el != ((void*)0))
    for (el = automata_list;; el = next_el)
      {
        next_el = el->next_automata_list_el;
        if (next_el == ((void*)0))
          break;
        fprintf (output_file, "        ");
        output_state_member_type (output_file, el->automaton);
 fprintf (output_file, " ");
        output_temp_chip_member_name (output_file, el->automaton);
        fprintf (output_file, ";\n");
      }
  for (el = automata_list; el != ((void*)0); el = el->next_automata_list_el)
    if (comb_vect_p (el->automaton->trans_table))
      {
 fprintf (output_file, "\n        %s = ", TEMPORARY_VARIABLE_NAME);
 output_trans_base_vect_name (output_file, el->automaton);
 fprintf (output_file, " [%s->", CHIP_PARAMETER_NAME);
 output_chip_member_name (output_file, el->automaton);
 fprintf (output_file, "] + ");
 output_translate_vect_name (output_file, el->automaton);
 fprintf (output_file, " [%s];\n", INTERNAL_INSN_CODE_NAME);
 fprintf (output_file, "        if (");
 output_trans_check_vect_name (output_file, el->automaton);
 fprintf (output_file, " [%s] != %s->",
   TEMPORARY_VARIABLE_NAME, CHIP_PARAMETER_NAME);
 output_chip_member_name (output_file, el->automaton);
 fprintf (output_file, ")\n");
 fprintf (output_file, "          return %s (%s, %s);\n",
   INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, INTERNAL_INSN_CODE_NAME,
   CHIP_PARAMETER_NAME);
 fprintf (output_file, "        else\n");
 fprintf (output_file, "          ");
 if (el->next_automata_list_el != ((void*)0))
   output_temp_chip_member_name (output_file, el->automaton);
 else
   {
     fprintf (output_file, "%s->", CHIP_PARAMETER_NAME);
     output_chip_member_name (output_file, el->automaton);
   }
 fprintf (output_file, " = ");
 output_trans_comb_vect_name (output_file, el->automaton);
 fprintf (output_file, " [%s];\n", TEMPORARY_VARIABLE_NAME);
      }
    else
      {
 fprintf (output_file, "\n        %s = ", TEMPORARY_VARIABLE_NAME);
 output_trans_full_vect_name (output_file, el->automaton);
 fprintf (output_file, " [");
 output_translate_vect_name (output_file, el->automaton);
 fprintf (output_file, " [%s] + ", INTERNAL_INSN_CODE_NAME);
 fprintf (output_file, "%s->", CHIP_PARAMETER_NAME);
 output_chip_member_name (output_file, el->automaton);
 fprintf (output_file, " * %d];\n",
   el->automaton->insn_equiv_classes_num);
 fprintf (output_file, "        if (%s >= %d)\n",
   TEMPORARY_VARIABLE_NAME, el->automaton->achieved_states_num);
 fprintf (output_file, "          return %s (%s, %s);\n",
   INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, INTERNAL_INSN_CODE_NAME,
   CHIP_PARAMETER_NAME);
 fprintf (output_file, "        else\n          ");
 if (el->next_automata_list_el != ((void*)0))
   output_temp_chip_member_name (output_file, el->automaton);
 else
   {
     fprintf (output_file, "%s->", CHIP_PARAMETER_NAME);
     output_chip_member_name (output_file, el->automaton);
   }
 fprintf (output_file, " = %s;\n", TEMPORARY_VARIABLE_NAME);
      }
  if (automata_list != ((void*)0) && automata_list->next_automata_list_el != ((void*)0))
    for (el = automata_list;; el = next_el)
      {
        next_el = el->next_automata_list_el;
        if (next_el == ((void*)0))
          break;
        fprintf (output_file, "        %s->", CHIP_PARAMETER_NAME);
        output_chip_member_name (output_file, el->automaton);
        fprintf (output_file, " = ");
        output_temp_chip_member_name (output_file, el->automaton);
        fprintf (output_file, ";\n");
      }
  fprintf (output_file, "        return -1;\n");
  fprintf (output_file, "      }\n");
}
