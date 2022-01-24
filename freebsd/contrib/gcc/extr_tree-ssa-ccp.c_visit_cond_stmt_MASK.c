#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {scalar_t__ value; } ;
typedef  TYPE_1__ prop_value_t ;
typedef  enum ssa_prop_result { ____Placeholder_ssa_prop_result } ssa_prop_result ;
typedef  int edge ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int SSA_PROP_INTERESTING ; 
 int SSA_PROP_VARYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static enum ssa_prop_result
FUNC3 (tree stmt, edge *taken_edge_p)
{
  prop_value_t val;
  basic_block block;

  block = FUNC0 (stmt);
  val = FUNC1 (stmt);

  /* Find which edge out of the conditional block will be taken and add it
     to the worklist.  If no single edge can be determined statically,
     return SSA_PROP_VARYING to feed all the outgoing edges to the
     propagation engine.  */
  *taken_edge_p = val.value ? FUNC2 (block, val.value) : 0;
  if (*taken_edge_p)
    return SSA_PROP_INTERESTING;
  else
    return SSA_PROP_VARYING;
}