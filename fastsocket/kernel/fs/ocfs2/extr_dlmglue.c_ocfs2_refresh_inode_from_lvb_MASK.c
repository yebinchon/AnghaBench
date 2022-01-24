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
struct ocfs2_meta_lvb {int /*<<< orphan*/  lvb_ictime_packed; int /*<<< orphan*/  lvb_imtime_packed; int /*<<< orphan*/  lvb_iatime_packed; int /*<<< orphan*/  lvb_inlink; int /*<<< orphan*/  lvb_imode; int /*<<< orphan*/  lvb_igid; int /*<<< orphan*/  lvb_iuid; int /*<<< orphan*/  lvb_idynfeatures; int /*<<< orphan*/  lvb_iattr; int /*<<< orphan*/  lvb_isize; int /*<<< orphan*/  lvb_iclusters; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lksb; } ;
struct ocfs2_inode_info {int /*<<< orphan*/  ip_lock; void* ip_clusters; void* ip_dyn_features; void* ip_attr; struct ocfs2_lock_res ip_inode_lockres; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; void* i_nlink; void* i_mode; void* i_gid; void* i_uid; scalar_t__ i_blocks; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ocfs2_lock_res*) ; 
 struct ocfs2_meta_lvb* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct inode *inode)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_lock_res *lockres = &oi->ip_inode_lockres;
	struct ocfs2_meta_lvb *lvb;

	FUNC6();

	FUNC8(0, lockres);

	lvb = FUNC9(&lockres->l_lksb);

	/* We're safe here without the lockres lock... */
	FUNC13(&oi->ip_lock);
	oi->ip_clusters = FUNC3(lvb->lvb_iclusters);
	FUNC5(inode, FUNC4(lvb->lvb_isize));

	oi->ip_attr = FUNC3(lvb->lvb_iattr);
	oi->ip_dyn_features = FUNC2(lvb->lvb_idynfeatures);
	FUNC11(inode);

	/* fast-symlinks are a special case */
	if (FUNC1(inode->i_mode) && !oi->ip_clusters)
		inode->i_blocks = 0;
	else
		inode->i_blocks = FUNC10(inode);

	inode->i_uid     = FUNC3(lvb->lvb_iuid);
	inode->i_gid     = FUNC3(lvb->lvb_igid);
	inode->i_mode    = FUNC2(lvb->lvb_imode);
	inode->i_nlink   = FUNC2(lvb->lvb_inlink);
	FUNC12(&inode->i_atime,
			      FUNC4(lvb->lvb_iatime_packed));
	FUNC12(&inode->i_mtime,
			      FUNC4(lvb->lvb_imtime_packed));
	FUNC12(&inode->i_ctime,
			      FUNC4(lvb->lvb_ictime_packed));
	FUNC14(&oi->ip_lock);

	FUNC7();
}