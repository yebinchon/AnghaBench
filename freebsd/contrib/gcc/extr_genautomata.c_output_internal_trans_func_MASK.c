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
 char* CHIP_PARAMETER_NAME ; 
 char* INTERNAL_INSN_CODE_NAME ; 
 char* INTERNAL_TRANSITION_FUNC_NAME ; 
 char* TEMPORARY_VARIABLE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  output_automata_list_transition_code ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 (output_file,
	   "static int\n%s (int %s, struct %s *%s ATTRIBUTE_UNUSED)\n",
	   INTERNAL_TRANSITION_FUNC_NAME, INTERNAL_INSN_CODE_NAME,
	   CHIP_NAME, CHIP_PARAMETER_NAME);
  FUNC0 (output_file, "{\n  int %s ATTRIBUTE_UNUSED;\n", TEMPORARY_VARIABLE_NAME);
  FUNC0 (output_file, "\n  switch (%s)\n    {\n", INTERNAL_INSN_CODE_NAME);
  FUNC1 (output_automata_list_transition_code);
  FUNC0 (output_file, "\n    default:\n      return -1;\n    }\n");
  FUNC0 (output_file, "}\n\n");
}