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
typedef  TYPE_1__* stmt_ann_t ;
struct TYPE_3__ {scalar_t__ has_volatile_ops; } ;

/* Variables and functions */
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ PHI_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSA_OP_ALL_VIRTUALS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ do_store_copy_prop ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (tree stmt)
{
  tree lhs, rhs;
  stmt_ann_t ann;

  if (FUNC2 (stmt) == PHI_NODE)
    return !FUNC1 (FUNC0 (stmt));

  if (FUNC2 (stmt) != MODIFY_EXPR)
    return false;

  lhs = FUNC3 (stmt, 0);
  rhs = FUNC3 (stmt, 1);
  ann = FUNC5 (stmt);

  /* If the statement has volatile operands, it won't generate a
     useful copy.  */
  if (ann->has_volatile_ops)
    return false;

  /* If we are not doing store copy-prop, statements with loads and/or
     stores will never generate a useful copy.  */
  if (!do_store_copy_prop
      && !FUNC4 (stmt, SSA_OP_ALL_VIRTUALS))
    return false;

  /* Otherwise, the only statements that generate useful copies are
     assignments whose RHS is just an SSA name that doesn't flow
     through abnormal edges.  */
  return (do_store_copy_prop
	  && FUNC2 (lhs) == SSA_NAME)
	 || (FUNC2 (rhs) == SSA_NAME
	     && !FUNC1 (rhs));
}