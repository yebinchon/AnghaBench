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
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (tree stmt)
{

  tree lhs = FUNC2 (stmt, 0);
  tree rhs = FUNC2 (stmt, 1);
  tree binlhs = FUNC2 (rhs, 0);
  tree binrhs = FUNC2 (rhs, 1);
  tree immusestmt;

  if (FUNC1 (binlhs) == SSA_NAME
      && FUNC4 (FUNC0 (binlhs), PLUS_EXPR))
    return true;

  if (FUNC1 (binrhs) == SSA_NAME
      && FUNC4 (FUNC0 (binrhs), PLUS_EXPR))
    return true;

  if (FUNC1 (lhs) == SSA_NAME
      && (immusestmt = FUNC3 (lhs))
      && FUNC1 (FUNC2 (immusestmt, 1)) == PLUS_EXPR)
    return true;
  return false;

}