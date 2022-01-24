#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct alpha_opcode {int dummy; } ;
struct alpha_macro {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* emit ) (TYPE_1__ const*,int,int /*<<< orphan*/ ) ;} ;
struct alpha_insn {int /*<<< orphan*/  sequence; } ;
struct TYPE_8__ {int /*<<< orphan*/  X_add_number; int /*<<< orphan*/  X_op; } ;
typedef  TYPE_1__ expressionS ;
typedef  scalar_t__ bfd_reloc_code_real_type ;
struct TYPE_9__ {scalar_t__ reloc; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BFD_RELOC_UNUSED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  alpha_macro_hash ; 
 int /*<<< orphan*/  alpha_opcode_hash ; 
 int /*<<< orphan*/  alpha_target_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct alpha_opcode const*,TYPE_1__ const*,int,struct alpha_insn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct alpha_insn*) ; 
 struct alpha_macro* FUNC6 (struct alpha_macro const*,TYPE_1__ const*,int*) ; 
 struct alpha_opcode* FUNC7 (struct alpha_opcode const*,TYPE_1__ const*,int*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (const char *opname,
		 const expressionS *tok,
		 int ntok,
		 int local_macros_on)
{
  int found_something = 0;
  const struct alpha_opcode *opcode;
  const struct alpha_macro *macro;
  int cpumatch = 1;
  bfd_reloc_code_real_type reloc = BFD_RELOC_UNUSED;

#ifdef RELOC_OP_P
  /* If a user-specified relocation is present, this is not a macro.  */
  if (ntok && USER_RELOC_P (tok[ntok - 1].X_op))
    {
      reloc = ALPHA_RELOC_TABLE (tok[ntok - 1].X_op)->reloc;
      ntok--;
    }
  else
#endif
  if (local_macros_on)
    {
      macro = ((const struct alpha_macro *)
	       FUNC8 (alpha_macro_hash, opname));
      if (macro)
	{
	  found_something = 1;
	  macro = FUNC6 (macro, tok, &ntok);
	  if (macro)
	    {
	      (*macro->emit) (tok, ntok, macro->arg);
	      return;
	    }
	}
    }

  /* Search opcodes.  */
  opcode = (const struct alpha_opcode *) FUNC8 (alpha_opcode_hash, opname);
  if (opcode)
    {
      found_something = 1;
      opcode = FUNC7 (opcode, tok, &ntok, &cpumatch);
      if (opcode)
	{
	  struct alpha_insn insn;
	  FUNC4 (opcode, tok, ntok, &insn, reloc);

	  /* Copy the sequence number for the reloc from the reloc token.  */
	  if (reloc != BFD_RELOC_UNUSED)
	    insn.sequence = tok[ntok].X_add_number;

	  FUNC5 (&insn);
	  return;
	}
    }

  if (found_something)
    {
      if (cpumatch)
	FUNC3 (FUNC2("inappropriate arguments for opcode `%s'"), opname);
      else
	FUNC3 (FUNC2("opcode `%s' not supported for target %s"), opname,
		alpha_target_name);
    }
  else
    FUNC3 (FUNC2("unknown opcode `%s'"), opname);
}