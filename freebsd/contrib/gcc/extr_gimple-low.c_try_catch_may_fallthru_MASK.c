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
#define  CATCH_EXPR 129 
#define  EH_FILTER_EXPR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9 (tree stmt)
{
  tree_stmt_iterator i;

  /* If the TRY block can fall through, the whole TRY_CATCH can
     fall through.  */
  if (FUNC4 (FUNC3 (stmt, 0)))
    return true;

  i = FUNC7 (FUNC3 (stmt, 1));
  switch (FUNC2 (FUNC8 (i)))
    {
    case CATCH_EXPR:
      /* We expect to see a sequence of CATCH_EXPR trees, each with a
	 catch expression and a body.  The whole TRY_CATCH may fall
	 through iff any of the catch bodies falls through.  */
      for (; !FUNC5 (i); FUNC6 (&i))
	{
	  if (FUNC4 (FUNC0 (FUNC8 (i))))
	    return true;
	}
      return false;

    case EH_FILTER_EXPR:
      /* The exception filter expression only matters if there is an
	 exception.  If the exception does not match EH_FILTER_TYPES,
	 we will execute EH_FILTER_FAILURE, and we will fall through
	 if that falls through.  If the exception does match
	 EH_FILTER_TYPES, the stack unwinder will continue up the
	 stack, so we will not fall through.  We don't know whether we
	 will throw an exception which matches EH_FILTER_TYPES or not,
	 so we just ignore EH_FILTER_TYPES and assume that we might
	 throw an exception which doesn't match.  */
      return FUNC4 (FUNC1 (FUNC8 (i)));

    default:
      /* This case represents statements to be executed when an
	 exception occurs.  Those statements are implicitly followed
	 by a RESX_EXPR to resume execution after the exception.  So
	 in this case the TRY_CATCH never falls through.  */
      return false;
    }
}