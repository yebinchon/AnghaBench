#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct TYPE_6__ {scalar_t__ b_blocknr; } ;
struct TYPE_5__ {scalar_t__ b_blocknr; } ;
struct TYPE_4__ {TYPE_2__* bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned long long,int,int,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct ocfs2_path*) ; 
 scalar_t__ FUNC4 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_extent_tree *et,
				   struct ocfs2_path *left,
				   struct ocfs2_path *right)
{
	int i = 0;

	/*
	 * Check that the caller passed in two paths from the same tree.
	 */
	FUNC0(FUNC4(left) != FUNC4(right));

	do {
		i++;

		/*
		 * The caller didn't pass two adjacent paths.
		 */
		FUNC1(i > left->p_tree_depth,
				"Owner %llu, left depth %u, right depth %u\n"
				"left leaf blk %llu, right leaf blk %llu\n",
				(unsigned long long)FUNC2(et->et_ci),
				left->p_tree_depth, right->p_tree_depth,
				(unsigned long long)FUNC3(left)->b_blocknr,
				(unsigned long long)FUNC3(right)->b_blocknr);
	} while (left->p_node[i].bh->b_blocknr ==
		 right->p_node[i].bh->b_blocknr);

	return i - 1;
}