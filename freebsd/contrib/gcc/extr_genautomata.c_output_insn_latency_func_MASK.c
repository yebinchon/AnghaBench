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
 char* INSN2_PARAMETER_NAME ; 
 char* INSN_LATENCY_FUNC_NAME ; 
 char* INSN_PARAMETER_NAME ; 
 char* INTERNAL_INSN2_CODE_NAME ; 
 char* INTERNAL_INSN_CODE_NAME ; 
 char* INTERNAL_INSN_LATENCY_FUNC_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 (output_file, "int\n%s (rtx %s, rtx %s)\n",
	   INSN_LATENCY_FUNC_NAME, INSN_PARAMETER_NAME, INSN2_PARAMETER_NAME);
  FUNC0 (output_file, "{\n  int %s, %s;\n",
	   INTERNAL_INSN_CODE_NAME, INTERNAL_INSN2_CODE_NAME);
  FUNC1 (INSN_PARAMETER_NAME,
					INTERNAL_INSN_CODE_NAME, 0);
  FUNC1 (INSN2_PARAMETER_NAME,
					INTERNAL_INSN2_CODE_NAME, 0);
  FUNC0 (output_file, "  return %s (%s, %s, %s, %s);\n}\n\n",
	   INTERNAL_INSN_LATENCY_FUNC_NAME,
	   INTERNAL_INSN_CODE_NAME, INTERNAL_INSN2_CODE_NAME,
	   INSN_PARAMETER_NAME, INSN2_PARAMETER_NAME);
}