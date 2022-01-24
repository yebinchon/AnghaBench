#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct alpha_insn {size_t nfixups; long sequence; TYPE_2__* fixups; } ;
struct TYPE_13__ {scalar_t__ X_op; int X_add_number; } ;
typedef  TYPE_3__ expressionS ;
struct TYPE_11__ {void* X_op; } ;
struct TYPE_12__ {TYPE_1__ exp; int /*<<< orphan*/  reloc; } ;

/* Variables and functions */
 int AXP_OPCODE_BWX ; 
 int /*<<< orphan*/  AXP_REG_AT ; 
 int AXP_REG_ZERO ; 
 int /*<<< orphan*/  DUMMY_RELOC_LITUSE_BASE ; 
 int /*<<< orphan*/  DUMMY_RELOC_LITUSE_BYTOFF ; 
 size_t MAX_INSN_FIXUPS ; 
 void* O_absent ; 
 scalar_t__ O_constant ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int alpha_gp_register ; 
 scalar_t__ alpha_noat_on ; 
 int alpha_target ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*,int,struct alpha_insn*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct alpha_insn*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*,int,int /*<<< orphan*/ ) ; 
 char** extXl_op ; 
 int /*<<< orphan*/ * ldXu_op ; 
 long FUNC6 (int /*<<< orphan*/ ,TYPE_3__ const*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__,int) ; 

__attribute__((used)) static void
FUNC10 (const expressionS *tok,
	   int ntok,
	   const void * vlgsize)
{
  if (alpha_target & AXP_OPCODE_BWX)
    FUNC5 (tok, ntok, ldXu_op[(long) vlgsize]);
  else
    {
      expressionS newtok[3];
      struct alpha_insn insn;
      int basereg;
      long lituse;

      if (alpha_noat_on)
	FUNC1 (FUNC0("macro requires $at register while noat in effect"));

      if (ntok == 2)
	basereg = (tok[1].X_op == O_constant
		   ? AXP_REG_ZERO : alpha_gp_register);
      else
	basereg = tok[2].X_add_number;

      /* Emit "lda $at, exp".  */
      lituse = FUNC6 (AXP_REG_AT, &tok[1], &basereg, NULL);

      /* Emit "ldq_u targ, 0($at)".  */
      newtok[0] = tok[0];
      FUNC7 (newtok[1], 0);
      FUNC8 (newtok[2], basereg);
      FUNC2 ("ldq_u", newtok, 3, &insn);

      if (lituse)
	{
	  FUNC3 (insn.nfixups < MAX_INSN_FIXUPS);
	  insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BASE;
	  insn.fixups[insn.nfixups].exp.X_op = O_absent;
	  insn.nfixups++;
	  insn.sequence = lituse;
	}

      FUNC4 (&insn);

      /* Emit "extXl targ, $at, targ".  */
      FUNC9 (newtok[1], basereg);
      newtok[2] = newtok[0];
      FUNC2 (extXl_op[(long) vlgsize], newtok, 3, &insn);

      if (lituse)
	{
	  FUNC3 (insn.nfixups < MAX_INSN_FIXUPS);
	  insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BYTOFF;
	  insn.fixups[insn.nfixups].exp.X_op = O_absent;
	  insn.nfixups++;
	  insn.sequence = lituse;
	}

      FUNC4 (&insn);
    }
}