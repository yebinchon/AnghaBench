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
 scalar_t__ CALL ; 
 int /*<<< orphan*/  DEFINE_EXPAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ MATCH_DUP ; 
 scalar_t__ MATCH_OPERAND ; 
 scalar_t__ MATCH_OPERATOR ; 
 scalar_t__ MATCH_OP_DUP ; 
 scalar_t__ MATCH_PARALLEL ; 
 scalar_t__ MATCH_PAR_DUP ; 
 int FUNC2 (int,int) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ PC ; 
 scalar_t__ RETURN ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int max_dup_opno ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int max_scratch_opno ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15 (rtx expand)
{
  int operands;
  int i;

  if (FUNC14 (FUNC5 (expand, 0)) == 0)
    FUNC9 ("define_expand lacks a name");
  if (FUNC6 (expand, 1) == 0)
    FUNC9 ("define_expand for %s lacks a pattern", FUNC5 (expand, 0));

  /* Find out how many operands this function has.  */
  operands = FUNC11 (expand, 1);

  /* Output the function name and argument declarations.  */
  FUNC13 ("rtx\ngen_%s (", FUNC5 (expand, 0));
  if (operands)
    for (i = 0; i < operands; i++)
      if (i)
	FUNC13 (",\n\trtx operand%d", i);
      else
	FUNC13 ("rtx operand%d", i);
  else
    FUNC13 ("void");
  FUNC13 (")\n");
  FUNC13 ("{\n");

  /* If we don't have any C code to write, only one insn is being written,
     and no MATCH_DUPs are present, we can just return the desired insn
     like we do for a DEFINE_INSN.  This saves memory.  */
  if ((FUNC5 (expand, 3) == 0 || *FUNC5 (expand, 3) == '\0')
      && operands > max_dup_opno
      && FUNC8 (expand, 1) == 1)
    {
      FUNC13 ("  return ");
      FUNC10 (FUNC7 (expand, 1, 0), DEFINE_EXPAND, NULL);
      FUNC13 (";\n}\n\n");
      return;
    }

  /* For each operand referred to only with MATCH_DUPs,
     make a local variable.  */
  for (i = operands; i <= max_dup_opno; i++)
    FUNC13 ("  rtx operand%d;\n", i);
  for (; i <= max_scratch_opno; i++)
    FUNC13 ("  rtx operand%d ATTRIBUTE_UNUSED;\n", i);
  FUNC13 ("  rtx _val = 0;\n");
  FUNC13 ("  start_sequence ();\n");

  /* The fourth operand of DEFINE_EXPAND is some code to be executed
     before the actual construction.
     This code expects to refer to `operands'
     just as the output-code in a DEFINE_INSN does,
     but here `operands' is an automatic array.
     So copy the operand values there before executing it.  */
  if (FUNC5 (expand, 3) && *FUNC5 (expand, 3))
    {
      FUNC13 ("  {\n");
      if (operands > 0 || max_dup_opno >= 0 || max_scratch_opno >= 0)
	FUNC13 ("    rtx operands[%d];\n",
	    FUNC2 (operands, FUNC2 (max_scratch_opno, max_dup_opno) + 1));
      /* Output code to copy the arguments into `operands'.  */
      for (i = 0; i < operands; i++)
	FUNC13 ("    operands[%d] = operand%d;\n", i, i);

      /* Output the special code to be executed before the sequence
	 is generated.  */
      FUNC12 (FUNC5 (expand, 3));
      FUNC13 ("%s\n", FUNC5 (expand, 3));

      /* Output code to copy the arguments back out of `operands'
	 (unless we aren't going to use them at all).  */
      if (FUNC6 (expand, 1) != 0)
	{
	  for (i = 0; i < operands; i++)
	    FUNC13 ("    operand%d = operands[%d];\n", i, i);
	  for (; i <= max_dup_opno; i++)
	    FUNC13 ("    operand%d = operands[%d];\n", i, i);
	  for (; i <= max_scratch_opno; i++)
	    FUNC13 ("    operand%d = operands[%d];\n", i, i);
	}
      FUNC13 ("  }\n");
    }

  /* Output code to construct the rtl for the instruction bodies.
     Use emit_insn to add them to the sequence being accumulated.
     But don't do this if the user's code has set `no_more' nonzero.  */

  for (i = 0; i < FUNC8 (expand, 1); i++)
    {
      rtx next = FUNC7 (expand, 1, i);
      if ((FUNC0 (next) == SET && FUNC0 (FUNC3 (next)) == PC)
	  || (FUNC0 (next) == PARALLEL
	      && ((FUNC0 (FUNC7 (next, 0, 0)) == SET
		   && FUNC0 (FUNC3 (FUNC7 (next, 0, 0))) == PC)
		  || FUNC0 (FUNC7 (next, 0, 0)) == RETURN))
	  || FUNC0 (next) == RETURN)
	FUNC13 ("  emit_jump_insn (");
      else if ((FUNC0 (next) == SET && FUNC0 (FUNC4 (next)) == CALL)
	       || FUNC0 (next) == CALL
	       || (FUNC0 (next) == PARALLEL
		   && FUNC0 (FUNC7 (next, 0, 0)) == SET
		   && FUNC0 (FUNC4 (FUNC7 (next, 0, 0))) == CALL)
	       || (FUNC0 (next) == PARALLEL
		   && FUNC0 (FUNC7 (next, 0, 0)) == CALL))
	FUNC13 ("  emit_call_insn (");
      else if (FUNC1 (next))
	FUNC13 ("  emit_label (");
      else if (FUNC0 (next) == MATCH_OPERAND
	       || FUNC0 (next) == MATCH_DUP
	       || FUNC0 (next) == MATCH_OPERATOR
	       || FUNC0 (next) == MATCH_OP_DUP
	       || FUNC0 (next) == MATCH_PARALLEL
	       || FUNC0 (next) == MATCH_PAR_DUP
	       || FUNC0 (next) == PARALLEL)
	FUNC13 ("  emit (");
      else
	FUNC13 ("  emit_insn (");
      FUNC10 (next, DEFINE_EXPAND, NULL);
      FUNC13 (");\n");
      if (FUNC0 (next) == SET && FUNC0 (FUNC3 (next)) == PC
	  && FUNC0 (FUNC4 (next)) == LABEL_REF)
	FUNC13 ("  emit_barrier ();");
    }

  /* Call `get_insns' to extract the list of all the
     insns emitted within this gen_... function.  */

  FUNC13 ("  _val = get_insns ();\n");
  FUNC13 ("  end_sequence ();\n");
  FUNC13 ("  return _val;\n}\n\n");
}