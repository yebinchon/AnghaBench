#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct funny_match {int this; int other; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int n_operands; scalar_t__ n_alternatives; char** constraints; int* operand_mode; scalar_t__* operand_type; int /*<<< orphan*/ * operand; } ;

/* Variables and functions */
 int ALL_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char const*) ; 
 scalar_t__ CONST_DOUBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ CONST_VECTOR ; 
 int /*<<< orphan*/  FUNC4 (int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char const*) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int GENERAL_REGS ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_RECOG_OPERANDS ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_VECTOR_FLOAT ; 
 int NO_REGS ; 
 scalar_t__ OP_OUT ; 
 scalar_t__ POST_DEC ; 
 scalar_t__ POST_INC ; 
 scalar_t__ PRE_DEC ; 
 scalar_t__ PRE_INC ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,char const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCRATCH ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  reload_in_progress ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int,int /*<<< orphan*/ ) ; 
 int FUNC27 (char const*,char**,int) ; 
 int FUNC28 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int which_alternative ; 

int
FUNC29 (int strict)
{
  const char *constraints[MAX_RECOG_OPERANDS];
  int matching_operands[MAX_RECOG_OPERANDS];
  int earlyclobber[MAX_RECOG_OPERANDS];
  int c;

  struct funny_match funny_match[MAX_RECOG_OPERANDS];
  int funny_match_index;

  which_alternative = 0;
  if (recog_data.n_operands == 0 || recog_data.n_alternatives == 0)
    return 1;

  for (c = 0; c < recog_data.n_operands; c++)
    {
      constraints[c] = recog_data.constraints[c];
      matching_operands[c] = -1;
    }

  do
    {
      int seen_earlyclobber_at = -1;
      int opno;
      int lose = 0;
      funny_match_index = 0;

      for (opno = 0; opno < recog_data.n_operands; opno++)
	{
	  rtx op = recog_data.operand[opno];
	  enum machine_mode mode = FUNC8 (op);
	  const char *p = constraints[opno];
	  int offset = 0;
	  int win = 0;
	  int val;
	  int len;

	  earlyclobber[opno] = 0;

	  /* A unary operator may be accepted by the predicate, but it
	     is irrelevant for matching constraints.  */
	  if (FUNC17 (op))
	    op = FUNC18 (op, 0);

	  if (FUNC7 (op) == SUBREG)
	    {
	      if (FUNC14 (FUNC16 (op))
		  && FUNC12 (FUNC16 (op)) < FIRST_PSEUDO_REGISTER)
		offset = FUNC28 (FUNC12 (FUNC16 (op)),
					      FUNC8 (FUNC16 (op)),
					      FUNC15 (op),
					      FUNC8 (op));
	      op = FUNC16 (op);
	    }

	  /* An empty constraint or empty alternative
	     allows anything which matched the pattern.  */
	  if (*p == 0 || *p == ',')
	    win = 1;

	  do
	    switch (c = *p, len = FUNC1 (c, p), c)
	      {
	      case '\0':
		len = 0;
		break;
	      case ',':
		c = '\0';
		break;

	      case '?':  case '!': case '*':  case '%':
	      case '=':  case '+':
		break;

	      case '#':
		/* Ignore rest of this alternative as far as
		   constraint checking is concerned.  */
		do
		  p++;
		while (*p && *p != ',');
		len = 0;
		break;

	      case '&':
		earlyclobber[opno] = 1;
		if (seen_earlyclobber_at < 0)
		  seen_earlyclobber_at = opno;
		break;

	      case '0':  case '1':  case '2':  case '3':  case '4':
	      case '5':  case '6':  case '7':  case '8':  case '9':
		{
		  /* This operand must be the same as a previous one.
		     This kind of constraint is used for instructions such
		     as add when they take only two operands.

		     Note that the lower-numbered operand is passed first.

		     If we are not testing strictly, assume that this
		     constraint will be satisfied.  */

		  char *end;
		  int match;

		  match = FUNC27 (p, &end, 10);
		  p = end;

		  if (strict < 0)
		    val = 1;
		  else
		    {
		      rtx op1 = recog_data.operand[match];
		      rtx op2 = recog_data.operand[opno];

		      /* A unary operator may be accepted by the predicate,
			 but it is irrelevant for matching constraints.  */
		      if (FUNC17 (op1))
			op1 = FUNC18 (op1, 0);
		      if (FUNC17 (op2))
			op2 = FUNC18 (op2, 0);

		      val = FUNC23 (op1, op2);
		    }

		  matching_operands[opno] = match;
		  matching_operands[match] = opno;

		  if (val != 0)
		    win = 1;

		  /* If output is *x and input is *--x, arrange later
		     to change the output to *--x as well, since the
		     output op is the one that will be printed.  */
		  if (val == 2 && strict > 0)
		    {
		      funny_match[funny_match_index].this = opno;
		      funny_match[funny_match_index++].other = match;
		    }
		}
		len = 0;
		break;

	      case 'p':
		/* p is used for address_operands.  When we are called by
		   gen_reload, no one will have checked that the address is
		   strictly valid, i.e., that all pseudos requiring hard regs
		   have gotten them.  */
		if (strict <= 0
		    || (FUNC26 (recog_data.operand_mode[opno],
						 op)))
		  win = 1;
		break;

		/* No need to check general_operand again;
		   it was done in insn-recog.c.  Well, except that reload
		   doesn't check the validity of its replacements, but
		   that should only matter when there's a bug.  */
	      case 'g':
		/* Anything goes unless it is a REG and really has a hard reg
		   but the hard reg is not in the class GENERAL_REGS.  */
		if (FUNC14 (op))
		  {
		    if (strict < 0
			|| GENERAL_REGS == ALL_REGS
			|| (reload_in_progress
			    && FUNC12 (op) >= FIRST_PSEUDO_REGISTER)
			|| FUNC24 (op, GENERAL_REGS, offset, mode))
		      win = 1;
		  }
		else if (strict < 0 || FUNC19 (op, mode))
		  win = 1;
		break;

	      case 'X':
		/* This is used for a MATCH_SCRATCH in the cases when
		   we don't actually need anything.  So anything goes
		   any time.  */
		win = 1;
		break;

	      case 'm':
		/* Memory operands must be valid, to the extent
		   required by STRICT.  */
		if (FUNC11 (op))
		  {
		    if (strict > 0
			&& !FUNC26 (FUNC8 (op),
						     FUNC18 (op, 0)))
		      break;
		    if (strict == 0
			&& !FUNC20 (FUNC8 (op), FUNC18 (op, 0)))
		      break;
		    win = 1;
		  }
		/* Before reload, accept what reload can turn into mem.  */
		else if (strict < 0 && FUNC0 (op))
		  win = 1;
		/* During reload, accept a pseudo  */
		else if (reload_in_progress && FUNC14 (op)
			 && FUNC12 (op) >= FIRST_PSEUDO_REGISTER)
		  win = 1;
		break;

	      case '<':
		if (FUNC11 (op)
		    && (FUNC7 (FUNC18 (op, 0)) == PRE_DEC
			|| FUNC7 (FUNC18 (op, 0)) == POST_DEC))
		  win = 1;
		break;

	      case '>':
		if (FUNC11 (op)
		    && (FUNC7 (FUNC18 (op, 0)) == PRE_INC
			|| FUNC7 (FUNC18 (op, 0)) == POST_INC))
		  win = 1;
		break;

	      case 'E':
	      case 'F':
		if (FUNC7 (op) == CONST_DOUBLE
		    || (FUNC7 (op) == CONST_VECTOR
			&& FUNC9 (FUNC8 (op)) == MODE_VECTOR_FLOAT))
		  win = 1;
		break;

	      case 'G':
	      case 'H':
		if (FUNC7 (op) == CONST_DOUBLE
		    && FUNC2 (op, c, p))
		  win = 1;
		break;

	      case 's':
		if (FUNC7 (op) == CONST_INT
		    || (FUNC7 (op) == CONST_DOUBLE
			&& FUNC8 (op) == VOIDmode))
		  break;
	      case 'i':
		if (FUNC0 (op))
		  win = 1;
		break;

	      case 'n':
		if (FUNC7 (op) == CONST_INT
		    || (FUNC7 (op) == CONST_DOUBLE
			&& FUNC8 (op) == VOIDmode))
		  win = 1;
		break;

	      case 'I':
	      case 'J':
	      case 'K':
	      case 'L':
	      case 'M':
	      case 'N':
	      case 'O':
	      case 'P':
		if (FUNC7 (op) == CONST_INT
		    && FUNC3 (FUNC10 (op), c, p))
		  win = 1;
		break;

	      case 'V':
		if (FUNC11 (op)
		    && ((strict > 0 && ! FUNC21 (op))
			|| (strict < 0
			    && !(FUNC0 (op) || FUNC11 (op)))
			|| (reload_in_progress
			    && !(FUNC14 (op)
				 && FUNC12 (op) >= FIRST_PSEUDO_REGISTER))))
		  win = 1;
		break;

	      case 'o':
		if ((strict > 0 && FUNC21 (op))
		    || (strict == 0 && FUNC22 (op))
		    /* Before reload, accept what reload can handle.  */
		    || (strict < 0
			&& (FUNC0 (op) || FUNC11 (op)))
		    /* During reload, accept a pseudo  */
		    || (reload_in_progress && FUNC14 (op)
			&& FUNC12 (op) >= FIRST_PSEUDO_REGISTER))
		  win = 1;
		break;

	      default:
		{
		  enum reg_class cl;

		  cl = (c == 'r'
			   ? GENERAL_REGS : FUNC13 (c, p));
		  if (cl != NO_REGS)
		    {
		      if (strict < 0
			  || (strict == 0
			      && FUNC14 (op)
			      && FUNC12 (op) >= FIRST_PSEUDO_REGISTER)
			  || (strict == 0 && FUNC7 (op) == SCRATCH)
			  || (FUNC14 (op)
			      && FUNC24 (op, cl, offset, mode)))
		        win = 1;
		    }
#ifdef EXTRA_CONSTRAINT_STR
		  else if (EXTRA_CONSTRAINT_STR (op, c, p))
		    win = 1;

		  else if (EXTRA_MEMORY_CONSTRAINT (c, p)
			   /* Every memory operand can be reloaded to fit.  */
			   && ((strict < 0 && MEM_P (op))
			       /* Before reload, accept what reload can turn
				  into mem.  */
			       || (strict < 0 && CONSTANT_P (op))
			       /* During reload, accept a pseudo  */
			       || (reload_in_progress && REG_P (op)
				   && REGNO (op) >= FIRST_PSEUDO_REGISTER)))
		    win = 1;
		  else if (EXTRA_ADDRESS_CONSTRAINT (c, p)
			   /* Every address operand can be reloaded to fit.  */
			   && strict < 0)
		    win = 1;
#endif
		  break;
		}
	      }
	  while (p += len, c);

	  constraints[opno] = p;
	  /* If this operand did not win somehow,
	     this alternative loses.  */
	  if (! win)
	    lose = 1;
	}
      /* This alternative won; the operands are ok.
	 Change whichever operands this alternative says to change.  */
      if (! lose)
	{
	  int opno, eopno;

	  /* See if any earlyclobber operand conflicts with some other
	     operand.  */

	  if (strict > 0  && seen_earlyclobber_at >= 0)
	    for (eopno = seen_earlyclobber_at;
		 eopno < recog_data.n_operands;
		 eopno++)
	      /* Ignore earlyclobber operands now in memory,
		 because we would often report failure when we have
		 two memory operands, one of which was formerly a REG.  */
	      if (earlyclobber[eopno]
		  && FUNC14 (recog_data.operand[eopno]))
		for (opno = 0; opno < recog_data.n_operands; opno++)
		  if ((FUNC11 (recog_data.operand[opno])
		       || recog_data.operand_type[opno] != OP_OUT)
		      && opno != eopno
		      /* Ignore things like match_operator operands.  */
		      && *recog_data.constraints[opno] != 0
		      && ! (matching_operands[opno] == eopno
			    && FUNC23 (recog_data.operand[opno],
						 recog_data.operand[eopno]))
		      && ! FUNC25 (recog_data.operand[opno],
						   recog_data.operand[eopno]))
		    lose = 1;

	  if (! lose)
	    {
	      while (--funny_match_index >= 0)
		{
		  recog_data.operand[funny_match[funny_match_index].other]
		    = recog_data.operand[funny_match[funny_match_index].this];
		}

	      return 1;
	    }
	}

      which_alternative++;
    }
  while (which_alternative < recog_data.n_alternatives);

  which_alternative = -1;
  /* If we are about to reject this, but we are not to test strictly,
     try a very loose test.  Only return failure if it fails also.  */
  if (strict == 0)
    return FUNC29 (-1);
  else
    return 0;
}