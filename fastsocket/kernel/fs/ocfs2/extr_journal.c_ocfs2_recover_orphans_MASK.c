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
struct ocfs2_super {int dummy; } ;
struct ocfs2_inode_info {int ip_flags; int /*<<< orphan*/  ip_lock; struct inode* ip_next_orphan; scalar_t__ ip_blkno; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 int OCFS2_INODE_MAYBE_ORPHANED ; 
 int OCFS2_INODE_SKIP_DELETE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,int) ; 
 int FUNC6 (struct ocfs2_super*,int,struct inode**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ocfs2_super *osb,
				 int slot)
{
	int ret = 0;
	struct inode *inode = NULL;
	struct inode *iter;
	struct ocfs2_inode_info *oi;

	FUNC2(0, "Recover inodes from orphan dir in slot %d\n", slot);

	FUNC5(osb, slot);
	ret = FUNC6(osb, slot, &inode);
	FUNC4(osb, slot);

	/* Error here should be noted, but we want to continue with as
	 * many queued inodes as we've got. */
	if (ret)
		FUNC3(ret);

	while (inode) {
		oi = FUNC0(inode);
		FUNC2(0, "iput orphan %llu\n", (unsigned long long)oi->ip_blkno);

		iter = oi->ip_next_orphan;

		FUNC7(&oi->ip_lock);
		/* The remote delete code may have set these on the
		 * assumption that the other node would wipe them
		 * successfully.  If they are still in the node's
		 * orphan dir, we need to reset that state. */
		oi->ip_flags &= ~(OCFS2_INODE_DELETED|OCFS2_INODE_SKIP_DELETE);

		/* Set the proper information to get us going into
		 * ocfs2_delete_inode. */
		oi->ip_flags |= OCFS2_INODE_MAYBE_ORPHANED;
		FUNC8(&oi->ip_lock);

		FUNC1(inode);

		inode = iter;
	}

	return ret;
}