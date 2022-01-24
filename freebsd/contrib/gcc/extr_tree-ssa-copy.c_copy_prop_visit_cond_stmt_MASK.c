#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  enum ssa_prop_result { ____Placeholder_ssa_prop_result } ssa_prop_result ;
typedef  TYPE_3__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_8__ {TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 int SSA_PROP_INTERESTING ; 
 int SSA_PROP_VARYING ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,...) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ssa_prop_result
FUNC10 (tree stmt, edge *taken_edge_p)
{
  enum ssa_prop_result retval;
  tree cond;

  cond = FUNC1 (stmt);
  retval = SSA_PROP_VARYING;

  /* The only conditionals that we may be able to compute statically
     are predicates involving two SSA_NAMEs.  */
  if (FUNC0 (cond)
      && FUNC2 (FUNC3 (cond, 0)) == SSA_NAME
      && FUNC2 (FUNC3 (cond, 1)) == SSA_NAME)
    {
      tree op0 = FUNC8 (FUNC3 (cond, 0));
      tree op1 = FUNC8 (FUNC3 (cond, 1));

      /* See if we can determine the predicate's value.  */
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC7 (dump_file, "Trying to determine truth value of ");
	  FUNC7 (dump_file, "predicate ");
	  FUNC9 (dump_file, cond, 0);
	}

      /* We can fold COND and get a useful result only when we have
	 the same SSA_NAME on both sides of a comparison operator.  */
      if (op0 == op1)
	{
	  tree folded_cond = FUNC6 (FUNC2 (cond), boolean_type_node,
					  op0, op1);
	  if (folded_cond)
	    {
	      basic_block bb = FUNC4 (stmt);
	      *taken_edge_p = FUNC5 (bb, folded_cond);
	      if (*taken_edge_p)
		retval = SSA_PROP_INTERESTING;
	    }
	}
    }

  if (dump_file && (dump_flags & TDF_DETAILS) && *taken_edge_p)
    FUNC7 (dump_file, "\nConditional will always take edge %d->%d\n",
	     (*taken_edge_p)->src->index, (*taken_edge_p)->dest->index);

  return retval;
}