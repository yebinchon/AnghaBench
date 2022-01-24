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
struct alpha_opcode {int dummy; } ;
struct alpha_insn {int dummy; } ;
typedef  int /*<<< orphan*/  expressionS ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  alpha_opcode_hash ; 
 int /*<<< orphan*/  alpha_target_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct alpha_opcode const*,int /*<<< orphan*/  const*,int,struct alpha_insn*,int /*<<< orphan*/ ) ; 
 struct alpha_opcode* FUNC3 (struct alpha_opcode const*,int /*<<< orphan*/  const*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC5 (const char *opname,
			 const expressionS *tok,
			 int ntok,
			 struct alpha_insn *insn)
{
  const struct alpha_opcode *opcode;

  /* Search opcodes.  */
  opcode = (const struct alpha_opcode *) FUNC4 (alpha_opcode_hash, opname);
  if (opcode)
    {
      int cpumatch;
      opcode = FUNC3 (opcode, tok, &ntok, &cpumatch);
      if (opcode)
	{
	  FUNC2 (opcode, tok, ntok, insn, BFD_RELOC_UNUSED);
	  return;
	}
      else if (cpumatch)
	FUNC1 (FUNC0("inappropriate arguments for opcode `%s'"), opname);
      else
	FUNC1 (FUNC0("opcode `%s' not supported for target %s"), opname,
		alpha_target_name);
    }
  else
    FUNC1 (FUNC0("unknown opcode `%s'"), opname);
}