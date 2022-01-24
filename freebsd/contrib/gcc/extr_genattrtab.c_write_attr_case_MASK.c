#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct attr_value {int num_insns; int /*<<< orphan*/  value; TYPE_2__* first_insn; scalar_t__ has_asm_insn; } ;
struct attr_desc {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_4__ {TYPE_1__* def; } ;
struct TYPE_3__ {int insn_code; int /*<<< orphan*/  insn_index; } ;

/* Variables and functions */
 scalar_t__ address_used ; 
 scalar_t__ must_constrain ; 
 scalar_t__ must_extract ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct attr_desc*,int,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC6 (struct attr_desc *attr, struct attr_value *av,
		 int write_case_lines, const char *prefix, const char *suffix,
		 int indent, rtx known_true)
{
  if (av->num_insns == 0)
    return;

  if (av->has_asm_insn)
    {
      FUNC4 (indent);
      FUNC0 ("case -1:\n");
      FUNC4 (indent + 2);
      FUNC0 ("if (GET_CODE (PATTERN (insn)) != ASM_INPUT\n");
      FUNC4 (indent + 2);
      FUNC0 ("    && asm_noperands (PATTERN (insn)) < 0)\n");
      FUNC4 (indent + 2);
      FUNC0 ("  fatal_insn_not_found (insn);\n");
    }

  if (write_case_lines)
    FUNC5 (av->first_insn, indent);
  else
    {
      FUNC4 (indent);
      FUNC0 ("default:\n");
    }

  /* See what we have to do to output this value.  */
  must_extract = must_constrain = address_used = 0;
  FUNC2 (av->value);

  if (must_constrain)
    {
      FUNC4 (indent + 2);
      FUNC0 ("extract_constrain_insn_cached (insn);\n");
    }
  else if (must_extract)
    {
      FUNC4 (indent + 2);
      FUNC0 ("extract_insn_cached (insn);\n");
    }

  if (av->num_insns == 1)
    FUNC3 (attr, indent + 2, av->value, prefix, suffix,
		    known_true, av->first_insn->def->insn_code,
		    av->first_insn->def->insn_index);
  else
    FUNC3 (attr, indent + 2, av->value, prefix, suffix,
		    known_true, -2, 0);

  if (FUNC1 (prefix, "return", 6))
    {
      FUNC4 (indent + 2);
      FUNC0 ("break;\n");
    }
  FUNC0 ("\n");
}