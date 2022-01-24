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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  int /*<<< orphan*/  tree ;
struct rus_data {int may_branch; int may_throw; int /*<<< orphan*/ * last_goto; } ;

/* Variables and functions */
#define  ASM_EXPR 138 
#define  BIND_EXPR 137 
#define  CALL_EXPR 136 
#define  COND_EXPR 135 
#define  GOTO_EXPR 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LABEL_EXPR 133 
#define  MODIFY_EXPR 132 
#define  RETURN_EXPR 131 
#define  STATEMENT_LIST 130 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
#define  TRY_CATCH_EXPR 129 
#define  TRY_FINALLY_EXPR 128 
 int /*<<< orphan*/  TSI_SAME_STMT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rus_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct rus_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rus_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct rus_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rus_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct rus_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20 (tree *tp, struct rus_data *data)
{
  tree t = *tp, op;

  switch (FUNC1 (t))
    {
    case COND_EXPR:
      FUNC6 (tp, data);
      break;

    case TRY_FINALLY_EXPR:
      FUNC10 (tp, data);
      break;

    case TRY_CATCH_EXPR:
      FUNC9 (tp, data);
      break;

    case BIND_EXPR:
      FUNC5 (tp, data);
      break;

    case GOTO_EXPR:
      FUNC7 (tp, data);
      break;

    case LABEL_EXPR:
      FUNC8 (tp, data);
      break;

    case RETURN_EXPR:
      FUNC2 (tp);
      data->last_goto = NULL;
      data->may_branch = true;
      break;

    case CALL_EXPR:
      FUNC2 (tp);
      data->last_goto = NULL;
      FUNC4 (t);
      FUNC19 (t);
      if (FUNC11 (t))
	data->may_throw = true;
      break;

    case MODIFY_EXPR:
      data->last_goto = NULL;
      FUNC2 (tp);
      op = FUNC3 (t);
      if (op)
	{
	  FUNC19 (op);
	  FUNC4 (op);
	}
      if (FUNC11 (t))
	data->may_throw = true;
      break;

    case STATEMENT_LIST:
      {
	tree_stmt_iterator i = FUNC16 (t);
	while (!FUNC13 (i))
	  {
	    t = FUNC17 (i);
	    if (FUNC0 (t))
	      {
		FUNC12 (&i);
		continue;
	      }

	    FUNC20 (FUNC18 (i), data);

	    t = FUNC17 (i);
	    if (FUNC1 (t) == STATEMENT_LIST)
	      {
		FUNC14 (&i, t, TSI_SAME_STMT);
		FUNC12 (&i);
	      }
	    else
	      FUNC15 (&i);
	  }
      }
      break;
    case ASM_EXPR:
      FUNC2 (tp);
      data->last_goto = NULL;
      break;

    default:
      data->last_goto = NULL;
      break;
    }
}