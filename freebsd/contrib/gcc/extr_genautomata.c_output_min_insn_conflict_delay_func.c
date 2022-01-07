
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CHIP_NAME ;
 char* INSN2_PARAMETER_NAME ;
 char* INSN_PARAMETER_NAME ;
 char* INTERNAL_INSN2_CODE_NAME ;
 char* INTERNAL_INSN_CODE_NAME ;
 char* INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME ;
 char* INTERNAL_RESET_FUNC_NAME ;
 char* INTERNAL_TRANSITION_FUNC_NAME ;
 char* MIN_INSN_CONFLICT_DELAY_FUNC_NAME ;
 char* STATE_NAME ;
 char* STATE_TYPE_NAME ;
 int fprintf (int ,char*,...) ;
 int output_file ;
 int output_internal_insn_code_evaluation (char*,char*,int ) ;

__attribute__((used)) static void
output_min_insn_conflict_delay_func (void)
{
  fprintf (output_file,
    "int\n%s (%s %s, rtx %s, rtx %s)\n",
    MIN_INSN_CONFLICT_DELAY_FUNC_NAME, STATE_TYPE_NAME,
    STATE_NAME, INSN_PARAMETER_NAME, INSN2_PARAMETER_NAME);
  fprintf (output_file, "{\n  struct %s %s;\n  int %s, %s, transition;\n",
    CHIP_NAME, CHIP_NAME, INTERNAL_INSN_CODE_NAME,
    INTERNAL_INSN2_CODE_NAME);
  output_internal_insn_code_evaluation (INSN_PARAMETER_NAME,
     INTERNAL_INSN_CODE_NAME, 0);
  output_internal_insn_code_evaluation (INSN2_PARAMETER_NAME,
     INTERNAL_INSN2_CODE_NAME, 0);
  fprintf (output_file, "  memcpy (&%s, %s, sizeof (%s));\n",
    CHIP_NAME, STATE_NAME, CHIP_NAME);
  fprintf (output_file, "  %s (&%s);\n", INTERNAL_RESET_FUNC_NAME, CHIP_NAME);
  fprintf (output_file, "  transition = %s (%s, &%s);\n",
    INTERNAL_TRANSITION_FUNC_NAME, INTERNAL_INSN_CODE_NAME, CHIP_NAME);
  fprintf (output_file, "  gcc_assert (transition <= 0);\n");
  fprintf (output_file, "  return %s (%s, &%s);\n",
    INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, INTERNAL_INSN2_CODE_NAME,
    CHIP_NAME);
  fprintf (output_file, "}\n\n");
}
