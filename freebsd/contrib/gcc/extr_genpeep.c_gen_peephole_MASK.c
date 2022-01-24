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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int insn_code_number ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int n_operands ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5 (rtx peep)
{
  int ninsns = FUNC2 (peep, 0);
  int i;

  n_operands = 0;

  FUNC4 ("  insn = ins1;\n");

  for (i = 0; i < ninsns; i++)
    {
      if (i > 0)
	{
	  FUNC4 ("  do { insn = NEXT_INSN (insn);\n");
	  FUNC4 ("       if (insn == 0) goto L%d; }\n",
		  insn_code_number);
	  FUNC4 ("  while (NOTE_P (insn)\n");
	  FUNC4 ("\t || (NONJUMP_INSN_P (insn)\n");
	  FUNC4 ("\t     && (GET_CODE (PATTERN (insn)) == USE\n");
	  FUNC4 ("\t\t || GET_CODE (PATTERN (insn)) == CLOBBER)));\n");

	  FUNC4 ("  if (LABEL_P (insn)\n\
      || BARRIER_P (insn))\n    goto L%d;\n",
		  insn_code_number);
	}

      FUNC4 ("  pat = PATTERN (insn);\n");

      /* Walk the insn's pattern, remembering at all times the path
	 down to the walking point.  */

      FUNC3 (FUNC1 (peep, 0, i), NULL, insn_code_number);
    }

  /* We get this far if the pattern matches.
     Now test the extra condition.  */

  if (FUNC0 (peep, 1) && FUNC0 (peep, 1)[0])
    FUNC4 ("  if (! (%s)) goto L%d;\n",
	    FUNC0 (peep, 1), insn_code_number);

  /* If that matches, construct new pattern and put it in the first insn.
     This new pattern will never be matched.
     It exists only so that insn-extract can get the operands back.
     So use a simple regular form: a PARALLEL containing a vector
     of all the operands.  */

  FUNC4 ("  PATTERN (ins1) = gen_rtx_PARALLEL (VOIDmode, gen_rtvec_v (%d, operands));\n", n_operands);

  /* Record this define_peephole's insn code in the insn,
     as if it had been recognized to match this.  */
  FUNC4 ("  INSN_CODE (ins1) = %d;\n",
	  insn_code_number);

  /* Delete the remaining insns.  */
  if (ninsns > 1)
    FUNC4 ("  delete_for_peephole (NEXT_INSN (ins1), insn);\n");

  /* See reload1.c for insertion of NOTE which guarantees that this
     cannot be zero.  */
  FUNC4 ("  return NEXT_INSN (insn);\n");

  FUNC4 (" L%d:\n\n", insn_code_number);
}