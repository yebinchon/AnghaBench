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

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC3 (tree stmt, tree within_stmt)
{
  /* We only use VRP information to simplify conditionals.  This is
     overly conservative, but it's unclear if doing more would be
     worth the compile time cost.  */
  if (FUNC1 (stmt) != COND_EXPR)
    return NULL;

  return FUNC2 (FUNC0 (stmt), within_stmt);
}