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
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_CONTINUE_LINKING ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC3 (block_stmt_iterator *bsi, tree stmt, tree r, tree i)
{
  tree lhs = FUNC0 (stmt, 0);
  tree list;

  list = FUNC2 (lhs, false, r);
  if (list)
    FUNC1 (bsi, list, BSI_CONTINUE_LINKING);

  list = FUNC2 (lhs, true, i);
  if (list)
    FUNC1 (bsi, list, BSI_CONTINUE_LINKING);
}