
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ADVANCE_CYCLE_VALUE_NAME ;
 char* DFA_INSN_CODE_FUNC_NAME ;
 int fprintf (int ,char*,char const*,...) ;
 int output_file ;

__attribute__((used)) static void
output_internal_insn_code_evaluation (const char *insn_name,
          const char *insn_code_name,
          int code)
{
  fprintf (output_file, "\n  if (%s != 0)\n    {\n", insn_name);
  fprintf (output_file, "      %s = %s (%s);\n", insn_code_name,
    DFA_INSN_CODE_FUNC_NAME, insn_name);
  fprintf (output_file, "      if (%s > %s)\n        return %d;\n",
    insn_code_name, ADVANCE_CYCLE_VALUE_NAME, code);
  fprintf (output_file, "    }\n  else\n    %s = %s;\n\n",
    insn_code_name, ADVANCE_CYCLE_VALUE_NAME);
}
