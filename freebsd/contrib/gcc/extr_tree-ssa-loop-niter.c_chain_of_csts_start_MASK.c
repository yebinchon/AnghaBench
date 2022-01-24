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
struct loop {scalar_t__ header; } ;
typedef  scalar_t__ basic_block ;

/* Variables and functions */
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ NULL_DEF_OPERAND_P ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ NULL_USE_OPERAND_P ; 
 scalar_t__ PHI_NODE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SSA_OP_ALL_VIRTUALS ; 
 int /*<<< orphan*/  SSA_OP_DEF ; 
 int /*<<< orphan*/  SSA_OP_USE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct loop*,scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (struct loop *loop, tree x)
{
  tree stmt = FUNC2 (x);
  tree use;
  basic_block bb = FUNC5 (stmt);

  if (!bb
      || !FUNC6 (loop, bb))
    return NULL_TREE;
  
  if (FUNC3 (stmt) == PHI_NODE)
    {
      if (bb == loop->header)
	return stmt;

      return NULL_TREE;
    }

  if (FUNC3 (stmt) != MODIFY_EXPR)
    return NULL_TREE;

  if (!FUNC4 (stmt, SSA_OP_ALL_VIRTUALS))
    return NULL_TREE;
  if (FUNC0 (stmt, SSA_OP_DEF) == NULL_DEF_OPERAND_P)
    return NULL_TREE;

  use = FUNC1 (stmt, SSA_OP_USE);
  if (use == NULL_USE_OPERAND_P)
    return NULL_TREE;

  return FUNC7 (loop, use);
}