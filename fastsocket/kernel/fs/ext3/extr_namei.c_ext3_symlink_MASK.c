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
struct inode {int h_sync; int i_size; TYPE_1__* i_sb; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
typedef  struct inode handle_t ;
struct TYPE_6__ {int i_disksize; int /*<<< orphan*/  i_data; } ;
struct TYPE_5__ {int s_blocksize; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT3_INDEX_EXTRA_TRANS_BLOCKS ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC6 (struct inode*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext3_fast_symlink_inode_operations ; 
 struct inode* FUNC9 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct inode*) ; 
 struct inode* FUNC12 (struct inode*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  ext3_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 

__attribute__((used)) static int FUNC19 (struct inode * dir,
		struct dentry *dentry, const char * symname)
{
	handle_t *handle;
	struct inode * inode;
	int l, err, retries = 0;

	l = FUNC17(symname)+1;
	if (l > dir->i_sb->s_blocksize)
		return -ENAMETOOLONG;

retry:
	handle = FUNC9(dir, FUNC0(dir->i_sb) +
					EXT3_INDEX_EXTRA_TRANS_BLOCKS + 5 +
					2*FUNC2(dir->i_sb));
	if (FUNC4(handle))
		return FUNC5(handle);

	if (FUNC3(dir))
		handle->h_sync = 1;

	inode = FUNC12 (handle, dir, S_IFLNK|S_IRWXUGO);
	err = FUNC5(inode);
	if (FUNC4(inode))
		goto out_stop;

	if (l > sizeof (FUNC1(inode)->i_data)) {
		inode->i_op = &ext3_symlink_inode_operations;
		FUNC13(inode);
		/*
		 * page_symlink() calls into ext3_prepare/commit_write.
		 * We have a transaction open.  All is sweetness.  It also sets
		 * i_size in generic_commit_write().
		 */
		err = FUNC6(inode, symname, l, 1);
		if (err) {
			FUNC7(inode);
			FUNC18(inode);
			FUNC11(handle, inode);
			FUNC15 (inode);
			goto out_stop;
		}
	} else {
		inode->i_op = &ext3_fast_symlink_inode_operations;
		FUNC16((char*)&FUNC1(inode)->i_data,symname,l);
		inode->i_size = l-1;
	}
	FUNC1(inode)->i_disksize = inode->i_size;
	err = FUNC8(handle, dentry, inode);
out_stop:
	FUNC10(handle);
	if (err == -ENOSPC && FUNC14(dir->i_sb, &retries))
		goto retry;
	return err;
}