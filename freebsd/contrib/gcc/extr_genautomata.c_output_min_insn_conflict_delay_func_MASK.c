#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 (output_file,
	   "int\n%s (%s %s, rtx %s, rtx %s)\n",
	   MIN_INSN_CONFLICT_DELAY_FUNC_NAME, STATE_TYPE_NAME,
	   STATE_NAME, INSN_PARAMETER_NAME, INSN2_PARAMETER_NAME);
  FUNC0 (output_file, "{\n  struct %s %s;\n  int %s, %s, transition;\n",
	   CHIP_NAME, CHIP_NAME, INTERNAL_INSN_CODE_NAME,
	   INTERNAL_INSN2_CODE_NAME);
  FUNC1 (INSN_PARAMETER_NAME,
					INTERNAL_INSN_CODE_NAME, 0);
  FUNC1 (INSN2_PARAMETER_NAME,
					INTERNAL_INSN2_CODE_NAME, 0);
  FUNC0 (output_file, "  memcpy (&%s, %s, sizeof (%s));\n",
	   CHIP_NAME, STATE_NAME, CHIP_NAME);
  FUNC0 (output_file, "  %s (&%s);\n", INTERNAL_RESET_FUNC_NAME, CHIP_NAME);
  FUNC0 (output_file, "  transition = %s (%s, &%s);\n",
	   INTERNAL_TRANSITION_FUNC_NAME, INTERNAL_INSN_CODE_NAME, CHIP_NAME);
  FUNC0 (output_file, "  gcc_assert (transition <= 0);\n");
  FUNC0 (output_file, "  return %s (%s, &%s);\n",
	   INTERNAL_MIN_ISSUE_DELAY_FUNC_NAME, INTERNAL_INSN2_CODE_NAME,
	   CHIP_NAME);
  FUNC0 (output_file, "}\n\n");
}