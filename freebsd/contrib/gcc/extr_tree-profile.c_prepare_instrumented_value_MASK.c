#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_2__* histogram_value ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {TYPE_1__ hvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gcov_type_node ; 

__attribute__((used)) static tree
FUNC2 (block_stmt_iterator *bsi,
			    histogram_value value)
{
  tree val = value->hvalue.value;
  return FUNC1 (bsi, FUNC0 (gcov_type_node, val),
				   true, NULL_TREE);
}