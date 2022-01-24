#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mips_opcode {char* name; char* args; } ;
struct mips_cl_insn {int insn_opcode; TYPE_1__* insn_mo; } ;
struct TYPE_7__ {scalar_t__ X_op; int X_add_number; int /*<<< orphan*/  X_add_symbol; } ;
typedef  TYPE_2__ expressionS ;
typedef  scalar_t__ bfd_reloc_code_real_type ;
struct TYPE_8__ {int /*<<< orphan*/  mips16; } ;
struct TYPE_6__ {int match; } ;

/* Variables and functions */
 scalar_t__ BFD_RELOC_HI16_S ; 
 scalar_t__ BFD_RELOC_UNUSED ; 
 int /*<<< orphan*/  HAVE_NEWABI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mips_cl_insn,int) ; 
 scalar_t__ NO_PIC ; 
 scalar_t__ O_constant ; 
 scalar_t__ O_symbol ; 
 int /*<<< orphan*/  RT ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_cl_insn*,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_cl_insn*,struct mips_opcode const*) ; 
 struct mips_opcode* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  mips_in_shared ; 
 TYPE_3__ mips_opts ; 
 scalar_t__ mips_pic ; 
 int /*<<< orphan*/  op_hash ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static void
FUNC7 (expressionS *ep, int regnum)
{
  expressionS high_expr;
  const struct mips_opcode *mo;
  struct mips_cl_insn insn;
  bfd_reloc_code_real_type r[3]
    = {BFD_RELOC_UNUSED, BFD_RELOC_UNUSED, BFD_RELOC_UNUSED};
  const char *name = "lui";
  const char *fmt = "t,u";

  FUNC3 (! mips_opts.mips16);

  high_expr = *ep;

  if (high_expr.X_op == O_constant)
    {
      /* We can compute the instruction now without a relocation entry.  */
      high_expr.X_add_number = ((high_expr.X_add_number + 0x8000)
				>> 16) & 0xffff;
      *r = BFD_RELOC_UNUSED;
    }
  else
    {
      FUNC3 (ep->X_op == O_symbol);
      /* _gp_disp is a special case, used from s_cpload.
	 __gnu_local_gp is used if mips_no_shared.  */
      FUNC3 (mips_pic == NO_PIC
	      || (! HAVE_NEWABI
		  && FUNC6 (FUNC1 (ep->X_add_symbol), "_gp_disp") == 0)
	      || (! mips_in_shared
		  && FUNC6 (FUNC1 (ep->X_add_symbol),
                             "__gnu_local_gp") == 0));
      *r = BFD_RELOC_HI16_S;
    }

  mo = FUNC5 (op_hash, name);
  FUNC3 (FUNC6 (name, mo->name) == 0);
  FUNC3 (FUNC6 (fmt, mo->args) == 0);
  FUNC4 (&insn, mo);

  insn.insn_opcode = insn.insn_mo->match;
  FUNC0 (RT, insn, regnum);
  if (*r == BFD_RELOC_UNUSED)
    {
      insn.insn_opcode |= high_expr.X_add_number;
      FUNC2 (&insn, NULL, r);
    }
  else
    FUNC2 (&insn, &high_expr, r);
}