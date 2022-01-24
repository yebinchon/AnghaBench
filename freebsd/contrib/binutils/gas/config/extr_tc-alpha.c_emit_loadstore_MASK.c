#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct alpha_insn {size_t nfixups; long sequence; TYPE_2__* fixups; } ;
struct TYPE_11__ {scalar_t__ X_op; int X_add_number; } ;
typedef  TYPE_3__ expressionS ;
struct TYPE_9__ {int /*<<< orphan*/  X_op; } ;
struct TYPE_10__ {TYPE_1__ exp; int /*<<< orphan*/  reloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP_REG_AT ; 
 int AXP_REG_ZERO ; 
 int /*<<< orphan*/  DUMMY_RELOC_LITUSE_BASE ; 
 size_t MAX_INSN_FIXUPS ; 
 int /*<<< orphan*/  O_absent ; 
 scalar_t__ O_constant ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int alpha_gp_register ; 
 scalar_t__ alpha_noat_on ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,TYPE_3__*,int,struct alpha_insn*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct alpha_insn*) ; 
 long FUNC5 (int /*<<< orphan*/ ,TYPE_3__ const*,int*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__,int) ; 

__attribute__((used)) static void
FUNC8 (const expressionS *tok,
		int ntok,
		const void * opname)
{
  int basereg;
  long lituse;
  expressionS newtok[3];
  struct alpha_insn insn;

  if (ntok == 2)
    basereg = (tok[1].X_op == O_constant ? AXP_REG_ZERO : alpha_gp_register);
  else
    basereg = tok[2].X_add_number;

  if (tok[1].X_op != O_constant || !FUNC6 (tok[1].X_add_number))
    {
      if (alpha_noat_on)
	FUNC1 (FUNC0("macro requires $at register while noat in effect"));

      lituse = FUNC5 (AXP_REG_AT, &tok[1], &basereg, &newtok[1]);
    }
  else
    {
      newtok[1] = tok[1];
      lituse = 0;
    }

  newtok[0] = tok[0];
  FUNC7 (newtok[2], basereg);

  FUNC2 ((const char *) opname, newtok, 3, &insn);

  if (lituse)
    {
      FUNC3 (insn.nfixups < MAX_INSN_FIXUPS);
      insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BASE;
      insn.fixups[insn.nfixups].exp.X_op = O_absent;
      insn.nfixups++;
      insn.sequence = lituse;
    }

  FUNC4 (&insn);
}