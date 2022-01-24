#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct alpha_insn {size_t nfixups; long sequence; TYPE_2__* fixups; } ;
struct TYPE_12__ {scalar_t__ X_op; int /*<<< orphan*/  X_add_number; } ;
typedef  TYPE_3__ expressionS ;
struct TYPE_10__ {int /*<<< orphan*/  X_op; } ;
struct TYPE_11__ {TYPE_1__ exp; int /*<<< orphan*/  reloc; } ;

/* Variables and functions */
 int AXP_REG_PV ; 
 int AXP_REG_RA ; 
 int AXP_REG_ZERO ; 
 int /*<<< orphan*/  DUMMY_RELOC_LITUSE_JSR ; 
 size_t MAX_INSN_FIXUPS ; 
 int /*<<< orphan*/  O_absent ; 
 scalar_t__ O_cpregister ; 
 scalar_t__ O_pregister ; 
 scalar_t__ O_register ; 
 int alpha_gp_register ; 
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_3__*,int,struct alpha_insn*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct alpha_insn*) ; 
 long FUNC3 (int,TYPE_3__ const*,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__,int) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static void
FUNC9 (const expressionS *tok,
	     int ntok,
	     const void * vopname)
{
  const char *opname = (const char *) vopname;
  struct alpha_insn insn;
  expressionS newtok[3];
  int r, tokidx = 0;
  long lituse = 0;

  if (tokidx < ntok && tok[tokidx].X_op == O_register)
    r = FUNC4 (tok[tokidx++].X_add_number);
  else
    r = FUNC8 (opname, "jmp") == 0 ? AXP_REG_ZERO : AXP_REG_RA;

  FUNC7 (newtok[0], r);

  if (tokidx < ntok &&
      (tok[tokidx].X_op == O_pregister || tok[tokidx].X_op == O_cpregister))
    r = FUNC4 (tok[tokidx++].X_add_number);
#ifdef OBJ_EVAX
  /* Keep register if jsr $n.<sym>.  */
#else
  else
    {
      int basereg = alpha_gp_register;
      lituse = FUNC3 (r = AXP_REG_PV, &tok[tokidx], &basereg, NULL);
    }
#endif

  FUNC6 (newtok[1], r);

#ifdef OBJ_EVAX
  /* FIXME: Add hint relocs to BFD for evax.  */
#else
  if (tokidx < ntok)
    newtok[2] = tok[tokidx];
  else
#endif
    FUNC5 (newtok[2], 0);

  FUNC0 (opname, newtok, 3, &insn);

  if (lituse)
    {
      FUNC1 (insn.nfixups < MAX_INSN_FIXUPS);
      insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_JSR;
      insn.fixups[insn.nfixups].exp.X_op = O_absent;
      insn.nfixups++;
      insn.sequence = lituse;
    }

  FUNC2 (&insn);
}