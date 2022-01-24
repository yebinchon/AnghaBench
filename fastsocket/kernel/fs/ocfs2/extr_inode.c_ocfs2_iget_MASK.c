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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct ocfs2_find_inode_args {unsigned int fi_flags; int fi_sysfile_type; int /*<<< orphan*/  fi_ino; scalar_t__ fi_blkno; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int I_NEW ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_find_inode_args*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  ocfs2_find_actor ; 
 int /*<<< orphan*/  ocfs2_init_locked_inode ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct ocfs2_find_inode_args*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

struct inode *FUNC14(struct ocfs2_super *osb, u64 blkno, unsigned flags,
			 int sysfile_type)
{
	struct inode *inode = NULL;
	struct super_block *sb = osb->sb;
	struct ocfs2_find_inode_args args;

	FUNC9("(blkno = %llu)\n", (unsigned long long)blkno);

	/* Ok. By now we've either got the offsets passed to us by the
	 * caller, or we just pulled them off the bh. Lets do some
	 * sanity checks to make sure they're OK. */
	if (blkno == 0) {
		inode = FUNC0(-EINVAL);
		FUNC10(FUNC3(inode));
		goto bail;
	}

	args.fi_blkno = blkno;
	args.fi_flags = flags;
	args.fi_ino = FUNC5(sb, blkno);
	args.fi_sysfile_type = sysfile_type;

	inode = FUNC4(sb, args.fi_ino, ocfs2_find_actor,
			     ocfs2_init_locked_inode, &args);
	/* inode was *not* in the inode cache. 2.6.x requires
	 * us to do our own read_inode call and unlock it
	 * afterwards. */
	if (inode && inode->i_state & I_NEW) {
		FUNC8(0, "Inode was not in inode cache, reading it.\n");
		FUNC12(inode, &args);
		FUNC13(inode);
	}
	if (inode == NULL) {
		inode = FUNC0(-ENOMEM);
		FUNC10(FUNC3(inode));
		goto bail;
	}
	if (FUNC7(inode)) {
		FUNC6(inode);
		inode = FUNC0(-ESTALE);
		goto bail;
	}

bail:
	if (!FUNC1(inode)) {
		FUNC8(0, "returning inode with number %llu\n",
		     (unsigned long long)FUNC2(inode)->ip_blkno);
		FUNC11(inode);
	}

	return inode;
}