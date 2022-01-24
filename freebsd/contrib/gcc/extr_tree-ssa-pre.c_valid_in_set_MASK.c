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
typedef  int /*<<< orphan*/  value_set_t ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ARRAY_REF ; 
 int /*<<< orphan*/  CALL_EXPR ; 
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VALUE_HANDLE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  tcc_binary 134 
#define  tcc_comparison 133 
#define  tcc_declaration 132 
#define  tcc_exceptional 131 
#define  tcc_expression 130 
#define  tcc_reference 129 
#define  tcc_unary 128 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC13 (value_set_t set, tree expr, basic_block block)
{
 tree vh = FUNC9 (expr);
 switch (FUNC3 (FUNC2 (expr)))
    {
    case tcc_binary:
    case tcc_comparison:
      {
	tree op1 = FUNC4 (expr, 0);
	tree op2 = FUNC4 (expr, 1);
	return FUNC11 (set, op1) && FUNC11 (set, op2);
      }

    case tcc_unary:
      {
	tree op1 = FUNC4 (expr, 0);
	return FUNC11 (set, op1);
      }

    case tcc_expression:
      {
	if (FUNC2 (expr) == CALL_EXPR)
	  {
	    tree op0 = FUNC4 (expr, 0);
	    tree arglist = FUNC4 (expr, 1);
	    tree op2 = FUNC4 (expr, 2);

	    /* Check the non-list operands first.  */
	    if (!FUNC11 (set, op0)
		|| (op2 && !FUNC11 (set, op2)))
	      return false;

	    /* Now check the operands.  */
	    for (; arglist; arglist = FUNC1 (arglist))
	      {
		if (!FUNC11 (set, FUNC5 (arglist)))
		  return false;
	      }
	    return !FUNC12 (FUNC6 (vh), block);
	  }
	return false;
      }

    case tcc_reference:
      {
	if (FUNC2 (expr) == INDIRECT_REF
	    || FUNC2 (expr) == COMPONENT_REF
            || FUNC2 (expr) == ARRAY_REF)
	  {
	    tree op0 = FUNC4 (expr, 0);
	    FUNC7 (FUNC10 (op0)
			|| FUNC2 (op0) == VALUE_HANDLE);
	    if (!FUNC11 (set, op0))
	      return false;
	    if (FUNC2 (expr) == ARRAY_REF)
	      {
		tree op1 = FUNC4 (expr, 1);
		tree op2 = FUNC4 (expr, 2);
		tree op3 = FUNC4 (expr, 3);
		FUNC7 (FUNC10 (op1)
		            || FUNC2 (op1) == VALUE_HANDLE);
		if (!FUNC11 (set, op1))
		  return false;
		FUNC7 (!op2 || FUNC10 (op2)
		            || FUNC2 (op2) == VALUE_HANDLE);
		if (op2
		    && !FUNC11 (set, op2))
		  return false;
		FUNC7 (!op3 || FUNC10 (op3)
		            || FUNC2 (op3) == VALUE_HANDLE);
		if (op3
		    && !FUNC11 (set, op3))
		  return false;
	    }
	  return FUNC11 (FUNC0 (block),
				     vh)
	    || !FUNC12 (FUNC6 (vh),
				       block);
	  }
      }
      return false;

    case tcc_exceptional:
      FUNC7 (FUNC2 (expr) == SSA_NAME);
      return true;

    case tcc_declaration:
      return !FUNC12 (FUNC6 (vh), block);

    default:
      /* No other cases should be encountered.  */
      FUNC8 ();
   }
}