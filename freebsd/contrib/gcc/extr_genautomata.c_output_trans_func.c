
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* INSN_PARAMETER_NAME ;
 char* INTERNAL_INSN_CODE_NAME ;
 char* INTERNAL_TRANSITION_FUNC_NAME ;
 char* STATE_NAME ;
 char* STATE_TYPE_NAME ;
 char* TRANSITION_FUNC_NAME ;
 int fprintf (int ,char*,char*,...) ;
 int output_file ;
 int output_internal_insn_code_evaluation (char*,char*,int) ;

__attribute__((used)) static void
output_trans_func (void)
{
  fprintf (output_file, "int\n%s (%s %s, rtx %s)\n",
    TRANSITION_FUNC_NAME, STATE_TYPE_NAME, STATE_NAME,
    INSN_PARAMETER_NAME);
  fprintf (output_file, "{\n  int %s;\n", INTERNAL_INSN_CODE_NAME);
  output_internal_insn_code_evaluation (INSN_PARAMETER_NAME,
     INTERNAL_INSN_CODE_NAME, -1);
  fprintf (output_file, "  return %s (%s, %s);\n}\n\n",
    INTERNAL_TRANSITION_FUNC_NAME, INTERNAL_INSN_CODE_NAME, STATE_NAME);
}
