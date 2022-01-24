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
typedef  int /*<<< orphan*/  edge ;

/* Variables and functions */
 int /*<<< orphan*/  GCOV_COUNTER_ARCS ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gcov_type_node ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (int edgeno, edge e)
{
  tree tmp1 = FUNC2 (gcov_type_node, "PROF");
  tree tmp2 = FUNC2 (gcov_type_node, "PROF");
  tree ref = FUNC3 (GCOV_COUNTER_ARCS, edgeno);
  tree stmt1 = FUNC1 (MODIFY_EXPR, gcov_type_node, tmp1, ref);
  tree stmt2 = FUNC1 (MODIFY_EXPR, gcov_type_node, tmp2,
		       FUNC1 (PLUS_EXPR, gcov_type_node, 
			      tmp1, integer_one_node));
  tree stmt3 = FUNC1 (MODIFY_EXPR, gcov_type_node, ref, tmp2);
  FUNC0 (e, stmt1);
  FUNC0 (e, stmt2);
  FUNC0 (e, stmt3);
}