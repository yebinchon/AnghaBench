
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DFA_INSN_CODES_LENGTH_VARIABLE_NAME ;
 char* DFA_INSN_CODES_VARIABLE_NAME ;
 char* DFA_INSN_CODE_FUNC_NAME ;
 char* INSN_PARAMETER_NAME ;
 char* INTERNAL_DFA_INSN_CODE_FUNC_NAME ;
 char* INTERNAL_INSN_CODE_NAME ;
 int fprintf (int ,char*,char*,...) ;
 int output_file ;

__attribute__((used)) static void
output_dfa_insn_code_func (void)
{


  fprintf (output_file, "static void\ndfa_insn_code_enlarge (int uid)\n{\n  int i = %s;\n  %s = 2 * uid;\n  %s = xrealloc (%s,\n                 %s * sizeof(int));\n  for (; i < %s; i++)\n    %s[i] = -1;\n}\n\n",
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME,
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME,
    DFA_INSN_CODES_VARIABLE_NAME, DFA_INSN_CODES_VARIABLE_NAME,
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME,
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME,
    DFA_INSN_CODES_VARIABLE_NAME);
  fprintf (output_file, "static inline int\n%s (rtx %s)\n{\n  int uid = INSN_UID (%s);\n  int %s;\n\n",




    DFA_INSN_CODE_FUNC_NAME, INSN_PARAMETER_NAME,
    INSN_PARAMETER_NAME, INTERNAL_INSN_CODE_NAME);

  fprintf (output_file,
    "  if (uid >= %s)\n    dfa_insn_code_enlarge (uid);\n\n",
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME);
  fprintf (output_file, "  %s = %s[uid];\n",
    INTERNAL_INSN_CODE_NAME, DFA_INSN_CODES_VARIABLE_NAME);
  fprintf (output_file, "  if (%s < 0)\n    {\n      %s = %s (%s);\n      %s[uid] = %s;\n    }\n",





    INTERNAL_INSN_CODE_NAME,
    INTERNAL_INSN_CODE_NAME,
    INTERNAL_DFA_INSN_CODE_FUNC_NAME, INSN_PARAMETER_NAME,
    DFA_INSN_CODES_VARIABLE_NAME, INTERNAL_INSN_CODE_NAME);
  fprintf (output_file, "  return %s;\n}\n\n", INTERNAL_INSN_CODE_NAME);
}
