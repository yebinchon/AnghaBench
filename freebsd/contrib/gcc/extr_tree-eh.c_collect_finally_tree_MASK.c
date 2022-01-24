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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CATCH_EXPR 133 
#define  EH_FILTER_EXPR 132 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  LABEL_EXPR 131 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  STATEMENT_LIST 130 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
#define  TRY_CATCH_EXPR 129 
#define  TRY_FINALLY_EXPR 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (tree t, tree region)
{
 tailrecurse:
  switch (FUNC3 (t))
    {
    case LABEL_EXPR:
      FUNC5 (FUNC2 (t), region);
      break;

    case TRY_FINALLY_EXPR:
      FUNC5 (t, region);
      FUNC10 (FUNC4 (t, 0), t);
      t = FUNC4 (t, 1);
      goto tailrecurse;

    case TRY_CATCH_EXPR:
      FUNC10 (FUNC4 (t, 0), region);
      t = FUNC4 (t, 1);
      goto tailrecurse;

    case CATCH_EXPR:
      t = FUNC0 (t);
      goto tailrecurse;

    case EH_FILTER_EXPR:
      t = FUNC1 (t);
      goto tailrecurse;

    case STATEMENT_LIST:
      {
	tree_stmt_iterator i;
	for (i = FUNC8 (t); !FUNC6 (i); FUNC7 (&i))
	  FUNC10 (FUNC9 (i), region);
      }
      break;

    default:
      /* A type, a decl, or some kind of statement that we're not
	 interested in.  Don't walk them.  */
      break;
    }
}