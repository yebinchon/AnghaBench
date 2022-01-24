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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_extent_tree {int /*<<< orphan*/ * et_ops; struct ocfs2_dinode* et_object; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_last_eb_blk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dinode_et_ops ; 

__attribute__((used)) static u64 FUNC2(struct ocfs2_extent_tree *et)
{
	struct ocfs2_dinode *di = et->et_object;

	FUNC0(et->et_ops != &ocfs2_dinode_et_ops);
	return FUNC1(di->i_last_eb_blk);
}