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
struct ocfs2_lock_res_ops {int dummy; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_name; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  enum ocfs2_lock_type { ____Placeholder_ocfs2_lock_type } ocfs2_lock_type ;
struct TYPE_2__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
#define  OCFS2_LOCK_TYPE_META 130 
#define  OCFS2_LOCK_TYPE_OPEN 129 
#define  OCFS2_LOCK_TYPE_RW 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct ocfs2_lock_res_ops ocfs2_inode_inode_lops ; 
 struct ocfs2_lock_res_ops ocfs2_inode_open_lops ; 
 struct ocfs2_lock_res_ops ocfs2_inode_rw_lops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ocfs2_lock_res*,int,struct ocfs2_lock_res_ops*,struct inode*) ; 

void FUNC5(struct ocfs2_lock_res *res,
			       enum ocfs2_lock_type type,
			       unsigned int generation,
			       struct inode *inode)
{
	struct ocfs2_lock_res_ops *ops;

	switch(type) {
		case OCFS2_LOCK_TYPE_RW:
			ops = &ocfs2_inode_rw_lops;
			break;
		case OCFS2_LOCK_TYPE_META:
			ops = &ocfs2_inode_inode_lops;
			break;
		case OCFS2_LOCK_TYPE_OPEN:
			ops = &ocfs2_inode_open_lops;
			break;
		default:
			FUNC2(1, "type: %d\n", type);
			ops = NULL; /* thanks, gcc */
			break;
	};

	FUNC3(type, FUNC0(inode)->ip_blkno,
			      generation, res->l_name);
	FUNC4(FUNC1(inode->i_sb), res, type, ops, inode);
}