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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  FUNC0 ("const char *\n");
  FUNC0 ("get_insn_name (int code)\n");
  FUNC0 ("{\n");
  FUNC0 ("  if (code == NOOP_MOVE_INSN_CODE)\n");
  FUNC0 ("    return \"NOOP_MOVE\";\n");
  FUNC0 ("  else\n");
  FUNC0 ("    return insn_data[code].name;\n");
  FUNC0 ("}\n");
}