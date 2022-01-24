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
struct sra_elt {int /*<<< orphan*/ * replacement; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sra_elt*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (struct sra_elt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sra_elt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8 (struct sra_elt *elt, tree *expr_p, block_stmt_iterator *bsi,
	       bool is_output, bool use_all)
{
  tree list = NULL, stmt = FUNC0 (*bsi);

  if (elt->replacement)
    {
      /* If we have a replacement, then updating the reference is as
	 simple as modifying the existing statement in place.  */
      if (is_output)
	FUNC3 (stmt);
      *expr_p = elt->replacement;
      FUNC7 (stmt);
    }
  else
    {
      /* Otherwise we need some copies.  If ELT is being read, then we want
	 to store all (modified) sub-elements back into the structure before
	 the reference takes place.  If ELT is being written, then we want to
	 load the changed values back into our shadow variables.  */
      /* ??? We don't check modified for reads, we just always write all of
	 the values.  We should be able to record the SSA number of the VOP
	 for which the values were last read.  If that number matches the
	 SSA number of the VOP in the current statement, then we needn't
	 emit an assignment.  This would also eliminate double writes when
	 a structure is passed as more than one argument to a function call.
	 This optimization would be most effective if sra_walk_function
	 processed the blocks in dominator order.  */

      FUNC1 (elt, is_output, FUNC2 (elt), &list);
      if (list == NULL)
	return;
      FUNC3 (list);
      if (is_output)
	FUNC5 (bsi, list);
      else
	{
	  FUNC6 (bsi, list);
	  if (use_all)
	    FUNC4 (elt);
	}
    }
}