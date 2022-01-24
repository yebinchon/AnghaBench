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
typedef  void* tree ;
struct goto_queue_node {int /*<<< orphan*/  repl_stmt; void* stmt; void* cont_stmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOTO_EXPR ; 
#define  MODIFY_EXPR 129 
#define  RESULT_DECL 128 
 int /*<<< orphan*/  RETURN_EXPR ; 
 int FUNC0 (void*) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC6 (int const,int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 void* current_function_decl ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC10 (struct goto_queue_node *q, tree finlab, tree mod,
		       tree *return_value_p)
{
  tree ret_expr = FUNC1 (q->stmt, 0);
  tree x;

  if (ret_expr)
    {
      /* The nasty part about redirecting the return value is that the
	 return value itself is to be computed before the FINALLY block
	 is executed.  e.g.

		int x;
		int foo (void)
		{
		  x = 0;
		  try {
		    return x;
		  } finally {
		    x++;
		  }
		}

	  should return 0, not 1.  Arrange for this to happen by copying
	  computed the return value into a local temporary.  This also
	  allows us to redirect multiple return statements through the
	  same destination block; whether this is a net win or not really
	  depends, I guess, but it does make generation of the switch in
	  lower_try_finally_switch easier.  */

      switch (FUNC0 (ret_expr))
	{
	case RESULT_DECL:
	  if (!*return_value_p)
	    *return_value_p = ret_expr;
	  else
	    FUNC8 (*return_value_p == ret_expr);
	  q->cont_stmt = q->stmt;
	  break;

	case MODIFY_EXPR:
	  {
	    tree result = FUNC1 (ret_expr, 0);
	    tree new, old = FUNC1 (ret_expr, 1);

	    if (!*return_value_p)
	      {
		if (FUNC3 (FUNC2 (result),
				      FUNC2 (current_function_decl)))
		  /* If this function returns in memory, copy the argument
		    into the return slot now.  Otherwise, we might need to
		    worry about magic return semantics, so we need to use a
		    temporary to hold the value until we're actually ready
		    to return.  */
		  new = result;
		else
		  new = FUNC7 (FUNC2 (old), "rettmp");
		*return_value_p = new;
	      }
	    else
	      new = *return_value_p;

	    x = FUNC6 (MODIFY_EXPR, FUNC2 (new), new, old);
	    FUNC4 (x, &q->repl_stmt);

	    if (new == result)
	      x = result;
	    else
	      x = FUNC6 (MODIFY_EXPR, FUNC2 (result), result, new);
	    q->cont_stmt = FUNC5 (RETURN_EXPR, void_type_node, x);
	  }

	default:
	  FUNC9 ();
	}
    }
  else
    {
      /* If we don't return a value, all return statements are the same.  */
      q->cont_stmt = q->stmt;
    }

  if (mod)
    FUNC4 (mod, &q->repl_stmt);

  x = FUNC5 (GOTO_EXPR, void_type_node, finlab);
  FUNC4 (x, &q->repl_stmt);
}