#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_inode_info {int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_dyn_features; } ;
struct ocfs2_inline_data {void* id_count; } ;
struct TYPE_2__ {struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {void* i_dyn_features; TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INLINE_DATA_FL ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inode *inode, struct ocfs2_dinode *di)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_inline_data *idata = &di->id2.i_data;

	FUNC4(&oi->ip_lock);
	oi->ip_dyn_features |= OCFS2_INLINE_DATA_FL;
	di->i_dyn_features = FUNC1(oi->ip_dyn_features);
	FUNC5(&oi->ip_lock);

	/*
	 * We clear the entire i_data structure here so that all
	 * fields can be properly initialized.
	 */
	FUNC3(inode, di);

	idata->id_count = FUNC1(
			FUNC2(inode->i_sb, di));
}