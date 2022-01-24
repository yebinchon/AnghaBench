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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  scalar_t__ TREE_NO_WARNING ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INDIRECT_REF ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  MODOP_EXPR ; 
 int NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC6 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

tree
FUNC10 (tree lhs, enum tree_code modifycode, tree rhs)
{
  /* APPLE LOCAL __block assign sequence point 6639533 */
  bool insert_sequence_point = false;

  if (processing_template_decl)
    return FUNC5 (MODOP_EXPR, lhs,
			 FUNC5 (modifycode, NULL_TREE, NULL_TREE), rhs);

  /* APPLE LOCAL begin __block assign sequence point 6639533 */
  /* For byref = x;, we have to transform this into ({ typeof(x) x' =
     x; byref = x`; )} to ensure there is a sequence point before the
     evaluation of the byref, inorder to ensure that the access
     expression for byref doesn't start running before x is evaluated,
     as it will access the __forwarding pointer and that must be done
     after x is evaluated.  */
  /* First we check to see if lhs is a byref...  byrefs look like:
	__Block_byref_X.__forwarding->x  */
  if (FUNC1 (lhs) == COMPONENT_REF)
    {
      tree inner = FUNC2 (lhs, 0);
      /* now check for -> */
      if (FUNC1 (inner) == INDIRECT_REF)
	{
	  inner = FUNC2 (inner, 0);
	  if (FUNC1 (inner) == COMPONENT_REF)
	    {
	      inner = FUNC2 (inner, 0);
	      if (FUNC1 (inner) == VAR_DECL
		  && FUNC0 (inner))
		{
		  tree old_rhs = rhs;
		  /* then we save the rhs.  */
		  rhs = FUNC9 (rhs);
		  if (rhs != old_rhs)
		    /* And arrange for the sequence point to be inserted.  */
		    insert_sequence_point = true;
		}
	    }
	}
    }
  /* APPLE LOCAL end __block assign sequence point 6639533 */

  if (modifycode != NOP_EXPR)
    {
      tree rval = FUNC7 (MODIFY_EXPR, LOOKUP_NORMAL, lhs, rhs,
				FUNC8 (modifycode),
				/*overloaded_p=*/NULL);
      if (rval)
	{
	  /* APPLE LOCAL begin __block assign sequence point 6639533 */
	  if (insert_sequence_point)
	    rval = FUNC4 (COMPOUND_EXPR, FUNC3 (rval), rhs, rval);
	  /* APPLE LOCAL end __block assign sequence point 6639533 */
	  TREE_NO_WARNING (rval) = 1;
	  return rval;
	}
    }
  lhs = FUNC6 (lhs, modifycode, rhs);
  /* APPLE LOCAL begin __block assign sequence point 6639533 */
  if (insert_sequence_point)
    lhs = FUNC4 (COMPOUND_EXPR, FUNC3 (lhs), rhs, lhs);
  /* APPLE LOCAL end __block assign sequence point 6639533 */
  return lhs;
}