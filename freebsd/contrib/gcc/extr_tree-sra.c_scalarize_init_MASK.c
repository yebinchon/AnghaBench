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
typedef  int /*<<< orphan*/ * tree ;
struct sra_elt {scalar_t__ use_block_copy; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sra_elt*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (struct sra_elt*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (struct sra_elt*) ; 
 int /*<<< orphan*/  FUNC6 (struct sra_elt*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (struct sra_elt *lhs_elt, tree rhs, block_stmt_iterator *bsi)
{
  bool result = true;
  tree list = NULL;

  /* Generate initialization statements for all members extant in the RHS.  */
  if (rhs)
    {
      /* Unshare the expression just in case this is from a decl's initial.  */
      rhs = FUNC10 (rhs);
      result = FUNC4 (lhs_elt, rhs, &list);
    }

  /* CONSTRUCTOR is defined such that any member not mentioned is assigned
     a zero value.  Initialize the rest of the instantiated elements.  */
  FUNC6 (lhs_elt, &list);

  if (!result)
    {
      /* If we failed to convert the entire initializer, then we must
	 leave the structure assignment in place and must load values
	 from the structure into the slots for which we did not find
	 constants.  The easiest way to do this is to generate a complete
	 copy-out, and then follow that with the constant assignments
	 that we were able to build.  DCE will clean things up.  */
      tree list0 = NULL;
      FUNC3 (lhs_elt, true, FUNC5 (lhs_elt),
			   &list0);
      FUNC0 (list, &list0);
      list = list0;
    }

  if (lhs_elt->use_block_copy || !result)
    {
      /* Since LHS is not fully instantiated, we must leave the structure
	 assignment in place.  Treating this case differently from a USE
	 exposes constants to later optimizations.  */
      if (list)
	{
	  FUNC7 (list);
	  FUNC8 (bsi, list);
	}
    }
  else
    {
      /* The LHS is fully instantiated.  The list of initializations
	 replaces the original structure assignment.  */
      FUNC2 (list);
      FUNC7 (FUNC1 (*bsi));
      FUNC7 (list);
      FUNC9 (bsi, list);
    }
}