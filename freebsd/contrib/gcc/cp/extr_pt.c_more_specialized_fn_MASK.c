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

/* Variables and functions */
#define  ARRAY_TYPE 129 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  FUNCTION_TYPE 128 
 int /*<<< orphan*/  NULL_TREE ; 
 int REFERENCE_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIFY_ALLOW_NONE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC17 (tree pat1, tree pat2, int len)
{
  tree decl1 = FUNC5 (pat1);
  tree decl2 = FUNC5 (pat2);
  tree targs1 = FUNC14 (FUNC3 (pat1));
  tree targs2 = FUNC14 (FUNC3 (pat2));
  tree tparms1 = FUNC1 (pat1);
  tree tparms2 = FUNC1 (pat2);
  tree args1 = FUNC10 (FUNC8 (decl1));
  tree args2 = FUNC10 (FUNC8 (decl2));
  int better1 = 0;
  int better2 = 0;

  /* Remove the this parameter from non-static member functions.  If
     one is a non-static member function and the other is not a static
     member function, remove the first parameter from that function
     also.  This situation occurs for operator functions where we
     locate both a member function (with this pointer) and non-member
     operator (with explicit first operand).  */
  if (FUNC2 (decl1))
    {
      len--; /* LEN is the number of significant arguments for DECL1 */
      args1 = FUNC6 (args1);
      if (!FUNC4 (decl2))
	args2 = FUNC6 (args2);
    }
  else if (FUNC2 (decl2))
    {
      args2 = FUNC6 (args2);
      if (!FUNC4 (decl1))
	{
	  len--;
	  args1 = FUNC6 (args1);
	}
    }

  /* If only one is a conversion operator, they are unordered.  */
  if (FUNC0 (decl1) != FUNC0 (decl2))
    return 0;

  /* Consider the return type for a conversion function */
  if (FUNC0 (decl1))
    {
      args1 = FUNC15 (NULL_TREE, FUNC8 (FUNC8 (decl1)), args1);
      args2 = FUNC15 (NULL_TREE, FUNC8 (FUNC8 (decl2)), args2);
      len++;
    }

  processing_template_decl++;

  while (len--)
    {
      tree arg1 = FUNC9 (args1);
      tree arg2 = FUNC9 (args2);
      int deduce1, deduce2;
      int quals1 = -1;
      int quals2 = -1;

      if (FUNC7 (arg1) == REFERENCE_TYPE)
	{
	  arg1 = FUNC8 (arg1);
	  quals1 = FUNC13 (arg1);
	}

      if (FUNC7 (arg2) == REFERENCE_TYPE)
	{
	  arg2 = FUNC8 (arg2);
	  quals2 = FUNC13 (arg2);
	}

      if ((quals1 < 0) != (quals2 < 0))
	{
	  /* Only of the args is a reference, see if we should apply
	     array/function pointer decay to it.  This is not part of
	     DR214, but is, IMHO, consistent with the deduction rules
	     for the function call itself, and with our earlier
	     implementation of the underspecified partial ordering
	     rules.  (nathan).  */
	  if (quals1 >= 0)
	    {
	      switch (FUNC7 (arg1))
		{
		case ARRAY_TYPE:
		  arg1 = FUNC8 (arg1);
		  /* FALLTHROUGH. */
		case FUNCTION_TYPE:
		  arg1 = FUNC12 (arg1);
		  break;

		default:
		  break;
		}
	    }
	  else
	    {
	      switch (FUNC7 (arg2))
		{
		case ARRAY_TYPE:
		  arg2 = FUNC8 (arg2);
		  /* FALLTHROUGH. */
		case FUNCTION_TYPE:
		  arg2 = FUNC12 (arg2);
		  break;

		default:
		  break;
		}
	    }
	}

      arg1 = FUNC11 (arg1);
      arg2 = FUNC11 (arg2);

      deduce1 = !FUNC16 (tparms1, targs1, arg1, arg2, UNIFY_ALLOW_NONE);
      deduce2 = !FUNC16 (tparms2, targs2, arg2, arg1, UNIFY_ALLOW_NONE);

      if (!deduce1)
	better2 = -1;
      if (!deduce2)
	better1 = -1;
      if (better1 < 0 && better2 < 0)
	/* We've failed to deduce something in either direction.
	   These must be unordered.  */
	break;

      if (deduce1 && deduce2 && quals1 >= 0 && quals2 >= 0)
	{
	  /* Deduces in both directions, see if quals can
	     disambiguate.  Pretend the worse one failed to deduce. */
	  if ((quals1 & quals2) == quals2)
	    deduce1 = 0;
	  if ((quals1 & quals2) == quals1)
	    deduce2 = 0;
	}
      if (deduce1 && !deduce2 && !better2)
	better2 = 1;
      if (deduce2 && !deduce1 && !better1)
	better1 = 1;

      args1 = FUNC6 (args1);
      args2 = FUNC6 (args2);
    }

  processing_template_decl--;

  return (better1 > 0) - (better2 > 0);
}