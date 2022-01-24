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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_size; TYPE_1__* i_sb; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  struct inode handle_t ;
struct TYPE_6__ {int i_disksize; int /*<<< orphan*/  i_data; } ;
struct TYPE_5__ {int s_blocksize; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC6 (struct inode*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct inode* FUNC11 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct inode*) ; 
 struct inode* FUNC14 (struct inode*,struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  ext4_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,int) ; 
 int FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 

__attribute__((used)) static int FUNC21(struct inode *dir,
			struct dentry *dentry, const char *symname)
{
	handle_t *handle;
	struct inode *inode;
	int l, err, retries = 0;

	l = FUNC19(symname)+1;
	if (l > dir->i_sb->s_blocksize)
		return -ENAMETOOLONG;

retry:
	handle = FUNC11(dir, FUNC0(dir->i_sb) +
					EXT4_INDEX_EXTRA_TRANS_BLOCKS + 5 +
					FUNC2(dir->i_sb));
	if (FUNC4(handle))
		return FUNC5(handle);

	if (FUNC3(dir))
		FUNC10(handle);

	inode = FUNC14(handle, dir, S_IFLNK|S_IRWXUGO,
			       &dentry->d_name, 0);
	err = FUNC5(inode);
	if (FUNC4(inode))
		goto out_stop;

	if (l > sizeof(FUNC1(inode)->i_data)) {
		inode->i_op = &ext4_symlink_inode_operations;
		FUNC15(inode);
		/*
		 * page_symlink() calls into ext4_prepare/commit_write.
		 * We have a transaction open.  All is sweetness.  It also sets
		 * i_size in generic_commit_write().
		 */
		err = FUNC6(inode, symname, l, 1);
		if (err) {
			FUNC7(inode);
			FUNC20(inode);
			FUNC13(handle, inode);
			FUNC17(inode);
			goto out_stop;
		}
	} else {
		/* clear the extent format for fast symlink */
		FUNC9(inode, EXT4_INODE_EXTENTS);
		inode->i_op = &ext4_fast_symlink_inode_operations;
		FUNC18((char *)&FUNC1(inode)->i_data, symname, l);
		inode->i_size = l-1;
	}
	FUNC1(inode)->i_disksize = inode->i_size;
	err = FUNC8(handle, dentry, inode);
out_stop:
	FUNC12(handle);
	if (err == -ENOSPC && FUNC16(dir->i_sb, &retries))
		goto retry;
	return err;
}