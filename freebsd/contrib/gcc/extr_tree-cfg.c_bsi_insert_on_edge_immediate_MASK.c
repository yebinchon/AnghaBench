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
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/ * basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_NEW_STMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

basic_block
FUNC5 (edge e, tree stmt)
{
  block_stmt_iterator bsi;
  basic_block new_bb = NULL;

  FUNC3 (!FUNC0 (e));

  if (FUNC4 (e, &bsi, &new_bb))
    FUNC1 (&bsi, stmt, BSI_NEW_STMT);
  else
    FUNC2 (&bsi, stmt, BSI_NEW_STMT);

  return new_bb;
}