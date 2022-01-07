
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DFA_CLEAN_INSN_CACHE_FUNC_NAME ;
 char* DFA_CLEAR_SINGLE_INSN_CACHE_FUNC_NAME ;
 char* DFA_INSN_CODES_LENGTH_VARIABLE_NAME ;
 char* DFA_INSN_CODES_VARIABLE_NAME ;
 char* INSN_PARAMETER_NAME ;
 char* I_VARIABLE_NAME ;
 int fprintf (int ,char*,char*,char*,...) ;
 int output_file ;

__attribute__((used)) static void
output_dfa_clean_insn_cache_func (void)
{
  fprintf (output_file,
    "void\n%s (void)\n{\n  int %s;\n\n",
    DFA_CLEAN_INSN_CACHE_FUNC_NAME, I_VARIABLE_NAME);
  fprintf (output_file,
    "  for (%s = 0; %s < %s; %s++)\n    %s [%s] = -1;\n}\n\n",
    I_VARIABLE_NAME, I_VARIABLE_NAME,
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME, I_VARIABLE_NAME,
    DFA_INSN_CODES_VARIABLE_NAME, I_VARIABLE_NAME);

  fprintf (output_file,
           "void\n%s (rtx %s)\n{\n  int %s;\n\n",
           DFA_CLEAR_SINGLE_INSN_CACHE_FUNC_NAME, INSN_PARAMETER_NAME,
    I_VARIABLE_NAME);
  fprintf (output_file,
           "  %s = INSN_UID (%s);\n  if (%s < %s)\n    %s [%s] = -1;\n}\n\n",
           I_VARIABLE_NAME, INSN_PARAMETER_NAME, I_VARIABLE_NAME,
    DFA_INSN_CODES_LENGTH_VARIABLE_NAME, DFA_INSN_CODES_VARIABLE_NAME,
    I_VARIABLE_NAME);
}
