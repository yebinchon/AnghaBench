#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* edge ;
typedef  scalar_t__ basic_block ;
struct TYPE_8__ {scalar_t__ dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EQ_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NE_EXPR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC12 (basic_block cond_bb, basic_block middle_bb,
		   edge e0, edge e1, tree phi,
		   tree arg0, tree arg1)
{
  tree cond;
  edge true_edge, false_edge;

  /* If the type says honor signed zeros we cannot do this
     optimization.  */
  if (FUNC1 (FUNC5 (FUNC4 (arg1))))
    return false;

  if (!FUNC6 (middle_bb))
    return false;

  cond = FUNC0 (FUNC8 (cond_bb));

  /* This transformation is only valid for equality comparisons.  */
  if (FUNC2 (cond) != NE_EXPR && FUNC2 (cond) != EQ_EXPR)
    return false;

  /* We need to know which is the true edge and which is the false
      edge so that we know if have abs or negative abs.  */
  FUNC7 (cond_bb, &true_edge, &false_edge);

  /* At this point we know we have a COND_EXPR with two successors.
     One successor is BB, the other successor is an empty block which
     falls through into BB.

     The condition for the COND_EXPR is known to be NE_EXPR or EQ_EXPR.

     There is a single PHI node at the join point (BB) with two arguments.

     We now need to verify that the two arguments in the PHI node match
     the two arguments to the equality comparison.  */

  if ((FUNC9 (arg0, FUNC3 (cond, 0))
       && FUNC9 (arg1, FUNC3 (cond, 1)))
      || (FUNC9 (arg1, FUNC3 (cond, 0))
	  && FUNC9 (arg0, FUNC3 (cond, 1))))
    {
      edge e;
      tree arg;

      /* For NE_EXPR, we want to build an assignment result = arg where
	 arg is the PHI argument associated with the true edge.  For
	 EQ_EXPR we want the PHI argument associated with the false edge.  */
      e = (FUNC2 (cond) == NE_EXPR ? true_edge : false_edge);

      /* Unfortunately, E may not reach BB (it may instead have gone to
	 OTHER_BLOCK).  If that is the case, then we want the single outgoing
	 edge from OTHER_BLOCK which reaches BB and represents the desired
	 path from COND_BLOCK.  */
      if (e->dest == middle_bb)
	e = FUNC11 (e->dest);

      /* Now we know the incoming edge to BB that has the argument for the
	 RHS of our new assignment statement.  */
      if (e0 == e)
	arg = arg0;
      else
	arg = arg1;

      FUNC10 (cond_bb, e1, phi, arg);

      /* Note that we optimized this PHI.  */
      return true;
    }
  return false;
}