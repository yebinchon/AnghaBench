
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DFA_FINISH_FUNC_NAME ;
 char* DFA_INSN_CODES_VARIABLE_NAME ;
 int fprintf (int ,char*,char*,char*) ;
 int output_file ;

__attribute__((used)) static void
output_dfa_finish_func (void)
{
  fprintf (output_file, "void\n%s (void)\n{\n  free (%s);\n}\n\n",
    DFA_FINISH_FUNC_NAME, DFA_INSN_CODES_VARIABLE_NAME);
}
