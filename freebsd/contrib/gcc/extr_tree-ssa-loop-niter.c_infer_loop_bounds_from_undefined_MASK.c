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
typedef  int /*<<< orphan*/  tree ;
struct loop {unsigned int num_nodes; int /*<<< orphan*/  num; int /*<<< orphan*/  latch; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int ARRAY_REF ; 
#define  CALL_EXPR 129 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  CEIL_DIV_EXPR ; 
 int INTEGER_CST ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
#define  MODIFY_EXPR 128 
 int /*<<< orphan*/  NULL_TREE ; 
 int SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boolean_true_node ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct loop*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_wrapv ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (struct loop*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC26 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC29 (struct loop *loop)
{
  unsigned i;
  basic_block bb, *bbs;
  block_stmt_iterator bsi;
  
  bbs = FUNC22 (loop);

  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = bbs[i];

      /* If BB is not executed in each iteration of the loop, we cannot
	 use the operations in it to infer reliable upper bound on the
	 # of iterations of the loop.  */
      if (!FUNC16 (CDI_DOMINATORS, loop->latch, bb))
	continue;

      for (bsi = FUNC11 (bb); !FUNC9 (bsi); FUNC10 (&bsi))
        {
	  tree stmt = FUNC12 (bsi);

	  switch (FUNC1 (stmt))
	    {
	    case MODIFY_EXPR:
	      {
		tree op0 = FUNC2 (stmt, 0);
		tree op1 = FUNC2 (stmt, 1);

		/* For each array access, analyze its access function
		   and record a bound on the loop iteration domain.  */
		if (FUNC1 (op1) == ARRAY_REF 
		    && !FUNC8 (op1))
		  FUNC17 (stmt, op1);

		if (FUNC1 (op0) == ARRAY_REF 
		    && !FUNC8 (op0))
		  FUNC17 (stmt, op0);

		/* For each signed type variable in LOOP, analyze its
		   scalar evolution and record a bound of the loop
		   based on the type's ranges.  */
		else if (!flag_wrapv && FUNC1 (op0) == SSA_NAME)
		  {
		    tree init, step, diff, estimation;
		    tree scev = FUNC24 
		      (loop, FUNC7 (loop, op0));
		    tree type = FUNC14 (scev);

		    if (FUNC13 (scev)
			|| FUNC6 (type))
		      break;

		    init = FUNC23 (scev, loop->num);
		    step = FUNC18 (scev, loop->num);

		    if (init == NULL_TREE
			|| step == NULL_TREE
			|| FUNC1 (init) != INTEGER_CST
			|| FUNC1 (step) != INTEGER_CST
			|| FUNC5 (type) == NULL_TREE
			|| FUNC4 (type) == NULL_TREE)
		      break;

		    if (FUNC25 (step))
		      {
			tree utype;

			if (FUNC27 (step, integer_zero_node))
			  diff = FUNC19 (MINUS_EXPR, type, init,
					      FUNC5 (type));
			else
			  diff = FUNC19 (MINUS_EXPR, type,
					      FUNC4 (type), init);

			utype = FUNC28 (type);
			estimation = FUNC19 (CEIL_DIV_EXPR, type, diff,
						  step);
			FUNC26 (loop,
					 FUNC20 (utype, estimation),
					 boolean_true_node, stmt);
		      }
		  }

		break;
	      }

	    case CALL_EXPR:
	      {
		tree args;

		for (args = FUNC2 (stmt, 1); args;
		     args = FUNC0 (args))
		  if (FUNC1 (FUNC3 (args)) == ARRAY_REF
		      && !FUNC8 (FUNC3 (args)))
		    FUNC17 (stmt, FUNC3 (args));

		break;
	      }

	    default:
	      break;
	    }
	}
    }

  FUNC15 (loop);
  FUNC21 (bbs);
}