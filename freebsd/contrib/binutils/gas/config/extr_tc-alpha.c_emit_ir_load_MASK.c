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
 int AXP_REG_ZERO ; 
 int /*<<< orphan*/  DUMMY_RELOC_LITUSE_BASE ; 
 size_t MAX_INSN_FIXUPS ; 
 int /*<<< orphan*/  O_absent ; 
 scalar_t__ O_constant ; 
 int alpha_gp_register ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_3__*,int,struct alpha_insn*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct alpha_insn*) ; 
 long FUNC3 (int,TYPE_3__ const*,int*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__,int) ; 

__attribute__((used)) static void
FUNC5 (const expressionS *tok,
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

  lituse = FUNC3 (tok[0].X_add_number, &tok[1], &basereg,
			    &newtok[1]);

  newtok[0] = tok[0];
  FUNC4 (newtok[2], basereg);

  FUNC0 ((const char *) opname, newtok, 3, &insn);

  if (lituse)
    {
      FUNC1 (insn.nfixups < MAX_INSN_FIXUPS);
      insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BASE;
      insn.fixups[insn.nfixups].exp.X_op = O_absent;
      insn.nfixups++;
      insn.sequence = lituse;
    }

  FUNC2 (&insn);
}