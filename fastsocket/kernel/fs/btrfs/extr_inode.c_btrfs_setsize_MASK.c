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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
struct iattr {scalar_t__ ia_size; int ia_valid; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_MTIME ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_ORDERED_DATA_CLOSE ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 struct btrfs_trans_handle* FUNC6 (struct btrfs_root*,int) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, struct iattr *attr)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_trans_handle *trans;
	loff_t oldsize = FUNC10(inode);
	loff_t newsize = attr->ia_size;
	int mask = attr->ia_valid;
	int ret;

	if (newsize == oldsize)
		return 0;

	/*
	 * The regular truncate() case without ATTR_CTIME and ATTR_MTIME is a
	 * special case where we need to update the times despite not having
	 * these flags set.  For all other operations the VFS set these flags
	 * explicitly if it wants a timestamp update.
	 */
	if (newsize != oldsize && (!(mask & (ATTR_CTIME | ATTR_MTIME))))
		inode->i_ctime = inode->i_mtime = FUNC9(inode->i_sb);

	if (newsize > oldsize) {
		FUNC13(inode, oldsize, newsize);
		ret = FUNC3(inode, oldsize, newsize);
		if (ret)
			return ret;

		trans = FUNC6(root, 1);
		if (FUNC1(trans))
			return FUNC2(trans);

		FUNC11(inode, newsize);
		FUNC5(inode, FUNC10(inode), NULL);
		ret = FUNC8(trans, root, inode);
		FUNC4(trans, root);
	} else {

		/*
		 * We're truncating a file that used to have good data down to
		 * zero. Make sure it gets into the ordered flush list so that
		 * any new writes get down to disk quickly.
		 */
		if (newsize == 0)
			FUNC12(BTRFS_INODE_ORDERED_DATA_CLOSE,
				&FUNC0(inode)->runtime_flags);

		/* we don't support swapfiles, so vmtruncate shouldn't fail */
		FUNC14(inode, newsize);
		ret = FUNC7(inode);
	}

	return ret;
}