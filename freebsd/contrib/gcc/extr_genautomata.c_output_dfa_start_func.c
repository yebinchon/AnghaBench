
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DFA_CLEAN_INSN_CACHE_FUNC_NAME ;
 char* DFA_INSN_CODES_LENGTH_VARIABLE_NAME ;
 char* DFA_INSN_CODES_VARIABLE_NAME ;
 char* DFA_START_FUNC_NAME ;
 int fprintf (int ,char*,char*,...) ;
 int output_file ;

__attribute__((used)) static void
output_dfa_start_func (void)
{
  fprintf (output_file,
    "void\n%s (void)\n{\n  %s = get_max_uid ();\n",
    DFA_START_FUNC_NAME, DFA_INSN_CODES_LENGTH_VARIABLE_NAME);
  fprintf (output_file, "  %s = xmalloc (%s * sizeof (int));\n",
    DFA_INSN_CODES_VARIABLE_NAME, DFA_INSN_CODES_LENGTH_VARIABLE_NAME);
  fprintf (output_file, "  %s ();\n}\n\n", DFA_CLEAN_INSN_CACHE_FUNC_NAME);
}
