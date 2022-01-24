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
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
#define  BIND_EXPR 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CATCH_EXPR 133 
#define  COND_EXPR 132 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  EH_FILTER_EXPR 131 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
#define  STATEMENT_LIST 130 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
#define  TRY_CATCH_EXPR 129 
#define  TRY_FINALLY_EXPR 128 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC16 (tree stmt)
{
  if (FUNC6 (stmt))
    {
      location_t loc = FUNC7 (stmt);
      if (FUNC8 (loc) > 0)
	{
	  FUNC15 (0, "%Hwill never be executed", &loc);
	  return true;
	}
    }

  switch (FUNC9 (stmt))
    {
    case STATEMENT_LIST:
      {
	tree_stmt_iterator i;
	for (i = FUNC13 (stmt); !FUNC11 (i); FUNC12 (&i))
	  if (FUNC16 (FUNC14 (i)))
	    return true;
      }
      break;

    case COND_EXPR:
      if (FUNC16 (FUNC2 (stmt)))
	return true;
      if (FUNC16 (FUNC4 (stmt)))
	return true;
      if (FUNC16 (FUNC3 (stmt)))
	return true;
      break;

    case TRY_FINALLY_EXPR:
    case TRY_CATCH_EXPR:
      if (FUNC16 (FUNC10 (stmt, 0)))
	return true;
      if (FUNC16 (FUNC10 (stmt, 1)))
	return true;
      break;

    case CATCH_EXPR:
      return FUNC16 (FUNC1 (stmt));
    case EH_FILTER_EXPR:
      return FUNC16 (FUNC5 (stmt));
    case BIND_EXPR:
      return FUNC16 (FUNC0 (stmt));

    default:
      /* Not a live container.  */
      break;
    }

  return false;
}