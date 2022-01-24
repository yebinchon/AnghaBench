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
 char* DFA_CLEAN_INSN_CACHE_FUNC_NAME ; 
 char* DFA_INSN_CODES_LENGTH_VARIABLE_NAME ; 
 char* DFA_INSN_CODES_VARIABLE_NAME ; 
 char* DFA_START_FUNC_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  output_file ; 

__attribute__((used)) static void
FUNC1 (void)
{
  FUNC0 (output_file,
	   "void\n%s (void)\n{\n  %s = get_max_uid ();\n",
	   DFA_START_FUNC_NAME, DFA_INSN_CODES_LENGTH_VARIABLE_NAME);
  FUNC0 (output_file, "  %s = xmalloc (%s * sizeof (int));\n",
	   DFA_INSN_CODES_VARIABLE_NAME, DFA_INSN_CODES_LENGTH_VARIABLE_NAME);
  FUNC0 (output_file, "  %s ();\n}\n\n", DFA_CLEAN_INSN_CACHE_FUNC_NAME);
}