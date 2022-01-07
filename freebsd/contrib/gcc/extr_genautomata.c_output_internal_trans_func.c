
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CHIP_NAME ;
 char* CHIP_PARAMETER_NAME ;
 char* INTERNAL_INSN_CODE_NAME ;
 char* INTERNAL_TRANSITION_FUNC_NAME ;
 char* TEMPORARY_VARIABLE_NAME ;
 int fprintf (int ,char*,...) ;
 int output_automata_list_transition_code ;
 int output_file ;
 int output_insn_code_cases (int ) ;

__attribute__((used)) static void
output_internal_trans_func (void)
{
  fprintf (output_file,
    "static int\n%s (int %s, struct %s *%s ATTRIBUTE_UNUSED)\n",
    INTERNAL_TRANSITION_FUNC_NAME, INTERNAL_INSN_CODE_NAME,
    CHIP_NAME, CHIP_PARAMETER_NAME);
  fprintf (output_file, "{\n  int %s ATTRIBUTE_UNUSED;\n", TEMPORARY_VARIABLE_NAME);
  fprintf (output_file, "\n  switch (%s)\n    {\n", INTERNAL_INSN_CODE_NAME);
  output_insn_code_cases (output_automata_list_transition_code);
  fprintf (output_file, "\n    default:\n      return -1;\n    }\n");
  fprintf (output_file, "}\n\n");
}
