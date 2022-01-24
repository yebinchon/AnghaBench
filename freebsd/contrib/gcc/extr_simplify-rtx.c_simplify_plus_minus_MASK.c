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
struct simplify_plus_minus_op_data {scalar_t__ op; int neg; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  CONST 133 
 scalar_t__ FUNC0 (scalar_t__) ; 
#define  CONST_INT 132 
 int const FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  MINUS 131 
#define  NEG 130 
#define  NOT 129 
 scalar_t__ NULL_RTX ; 
#define  PLUS 128 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ constm1_rtx ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 scalar_t__ FUNC8 (int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct simplify_plus_minus_op_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (struct simplify_plus_minus_op_data*,struct simplify_plus_minus_op_data*) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC16 (enum rtx_code code, enum machine_mode mode, rtx op0,
		     rtx op1)
{
  struct simplify_plus_minus_op_data ops[8];
  rtx result, tem;
  int n_ops = 2, input_ops = 2;
  int changed, n_constants = 0, canonicalized = 0;
  int i, j;

  FUNC9 (ops, 0, sizeof ops);

  /* Set up the two operands and then expand them until nothing has been
     changed.  If we run out of room in our array, give up; this should
     almost never happen.  */

  ops[0].op = op0;
  ops[0].neg = 0;
  ops[1].op = op1;
  ops[1].neg = (code == MINUS);

  do
    {
      changed = 0;

      for (i = 0; i < n_ops; i++)
	{
	  rtx this_op = ops[i].op;
	  int this_neg = ops[i].neg;
	  enum rtx_code this_code = FUNC1 (this_op);

	  switch (this_code)
	    {
	    case PLUS:
	    case MINUS:
	      if (n_ops == 7)
		return NULL_RTX;

	      ops[n_ops].op = FUNC4 (this_op, 1);
	      ops[n_ops].neg = (this_code == MINUS) ^ this_neg;
	      n_ops++;

	      ops[i].op = FUNC4 (this_op, 0);
	      input_ops++;
	      changed = 1;
	      canonicalized |= this_neg;
	      break;

	    case NEG:
	      ops[i].op = FUNC4 (this_op, 0);
	      ops[i].neg = ! this_neg;
	      changed = 1;
	      canonicalized = 1;
	      break;

	    case CONST:
	      if (n_ops < 7
		  && FUNC1 (FUNC4 (this_op, 0)) == PLUS
		  && FUNC0 (FUNC4 (FUNC4 (this_op, 0), 0))
		  && FUNC0 (FUNC4 (FUNC4 (this_op, 0), 1)))
		{
		  ops[i].op = FUNC4 (FUNC4 (this_op, 0), 0);
		  ops[n_ops].op = FUNC4 (FUNC4 (this_op, 0), 1);
		  ops[n_ops].neg = this_neg;
		  n_ops++;
		  changed = 1;
	          canonicalized = 1;
		}
	      break;

	    case NOT:
	      /* ~a -> (-a - 1) */
	      if (n_ops != 7)
		{
		  ops[n_ops].op = constm1_rtx;
		  ops[n_ops++].neg = this_neg;
		  ops[i].op = FUNC4 (this_op, 0);
		  ops[i].neg = !this_neg;
		  changed = 1;
	          canonicalized = 1;
		}
	      break;

	    case CONST_INT:
	      n_constants++;
	      if (this_neg)
		{
		  ops[i].op = FUNC10 (mode, this_op);
		  ops[i].neg = 0;
		  changed = 1;
	          canonicalized = 1;
		}
	      break;

	    default:
	      break;
	    }
	}
    }
  while (changed);

  if (n_constants > 1)
    canonicalized = 1;

  FUNC5 (n_ops >= 2);

  /* If we only have two operands, we can avoid the loops.  */
  if (n_ops == 2)
    {
      enum rtx_code code = ops[0].neg || ops[1].neg ? MINUS : PLUS;
      rtx lhs, rhs;

      /* Get the two operands.  Be careful with the order, especially for
	 the cases where code == MINUS.  */
      if (ops[0].neg && ops[1].neg)
	{
	  lhs = FUNC7 (mode, ops[0].op);
	  rhs = ops[1].op;
	}
      else if (ops[0].neg)
	{
	  lhs = ops[1].op;
	  rhs = ops[0].op;
	}
      else
	{
	  lhs = ops[0].op;
	  rhs = ops[1].op;
	}

      return FUNC13 (code, mode, lhs, rhs);
    }

  /* Now simplify each pair of operands until nothing changes.  */
  do
    {
      /* Insertion sort is good enough for an eight-element array.  */
      for (i = 1; i < n_ops; i++)
        {
          struct simplify_plus_minus_op_data save;
          j = i - 1;
          if (FUNC14 (&ops[j], &ops[i]) < 0)
	    continue;

          canonicalized = 1;
          save = ops[i];
          do
	    ops[j + 1] = ops[j];
          while (j-- && FUNC14 (&ops[j], &save) > 0);
          ops[j + 1] = save;
        }

      /* This is only useful the first time through.  */
      if (!canonicalized)
        return NULL_RTX;

      changed = 0;
      for (i = n_ops - 1; i > 0; i--)
	for (j = i - 1; j >= 0; j--)
	  {
	    rtx lhs = ops[j].op, rhs = ops[i].op;
	    int lneg = ops[j].neg, rneg = ops[i].neg;

	    if (lhs != 0 && rhs != 0)
	      {
		enum rtx_code ncode = PLUS;

		if (lneg != rneg)
		  {
		    ncode = MINUS;
		    if (lneg)
		      tem = lhs, lhs = rhs, rhs = tem;
		  }
		else if (FUNC15 (lhs, rhs))
		  tem = lhs, lhs = rhs, rhs = tem;

		if ((FUNC1 (lhs) == CONST || FUNC1 (lhs) == CONST_INT)
		    && (FUNC1 (rhs) == CONST || FUNC1 (rhs) == CONST_INT))
		  {
		    rtx tem_lhs, tem_rhs;

		    tem_lhs = FUNC1 (lhs) == CONST ? FUNC4 (lhs, 0) : lhs;
		    tem_rhs = FUNC1 (rhs) == CONST ? FUNC4 (rhs, 0) : rhs;
		    tem = FUNC12 (ncode, mode, tem_lhs, tem_rhs);

		    if (tem && !FUNC0 (tem))
		      tem = FUNC6 (FUNC2 (tem), tem);
		  }
		else
		  tem = FUNC12 (ncode, mode, lhs, rhs);
		
		/* Reject "simplifications" that just wrap the two
		   arguments in a CONST.  Failure to do so can result
		   in infinite recursion with simplify_binary_operation
		   when it calls us to simplify CONST operations.  */
		if (tem
		    && ! (FUNC1 (tem) == CONST
			  && FUNC1 (FUNC4 (tem, 0)) == ncode
			  && FUNC4 (FUNC4 (tem, 0), 0) == lhs
			  && FUNC4 (FUNC4 (tem, 0), 1) == rhs))
		  {
		    lneg &= rneg;
		    if (FUNC1 (tem) == NEG)
		      tem = FUNC4 (tem, 0), lneg = !lneg;
		    if (FUNC1 (tem) == CONST_INT && lneg)
		      tem = FUNC10 (mode, tem), lneg = 0;

		    ops[i].op = tem;
		    ops[i].neg = lneg;
		    ops[j].op = NULL_RTX;
		    changed = 1;
		  }
	      }
	  }

      /* Pack all the operands to the lower-numbered entries.  */
      for (i = 0, j = 0; j < n_ops; j++)
        if (ops[j].op)
          {
	    ops[i] = ops[j];
	    i++;
          }
      n_ops = i;
    }
  while (changed);

  /* Create (minus -C X) instead of (neg (const (plus X C))).  */
  if (n_ops == 2
      && FUNC1 (ops[1].op) == CONST_INT
      && FUNC0 (ops[0].op)
      && ops[0].neg)
    return FUNC8 (MINUS, mode, ops[1].op, ops[0].op);
  
  /* We suppressed creation of trivial CONST expressions in the
     combination loop to avoid recursion.  Create one manually now.
     The combination loop should have ensured that there is exactly
     one CONST_INT, and the sort will have ensured that it is last
     in the array and that any other constant will be next-to-last.  */

  if (n_ops > 1
      && FUNC1 (ops[n_ops - 1].op) == CONST_INT
      && FUNC0 (ops[n_ops - 2].op))
    {
      rtx value = ops[n_ops - 1].op;
      if (ops[n_ops - 1].neg ^ ops[n_ops - 2].neg)
	value = FUNC10 (mode, value);
      ops[n_ops - 2].op = FUNC11 (ops[n_ops - 2].op, FUNC3 (value));
      n_ops--;
    }

  /* Put a non-negated operand first, if possible.  */

  for (i = 0; i < n_ops && ops[i].neg; i++)
    continue;
  if (i == n_ops)
    ops[0].op = FUNC7 (mode, ops[0].op);
  else if (i != 0)
    {
      tem = ops[0].op;
      ops[0] = ops[i];
      ops[i].op = tem;
      ops[i].neg = 1;
    }

  /* Now make the result by performing the requested operations.  */
  result = ops[0].op;
  for (i = 1; i < n_ops; i++)
    result = FUNC8 (ops[i].neg ? MINUS : PLUS,
			     mode, result, ops[i].op);

  return result;
}