#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u16 ;
struct writeback_control {scalar_t__ sync_mode; } ;
struct TYPE_9__ {unsigned long tv_sec; } ;
struct TYPE_8__ {unsigned long tv_sec; } ;
struct TYPE_7__ {unsigned long tv_sec; } ;
struct inode {unsigned long i_mode; unsigned long i_uid; unsigned long i_gid; unsigned long i_nlink; unsigned long i_size; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; TYPE_4__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_sb_info {unsigned int si_lasti; int /*<<< orphan*/  bfs_lock; } ;
struct bfs_inode {void* i_eoffset; void* i_eblock; void* i_sblock; void* i_ctime; void* i_mtime; void* i_atime; void* i_nlink; void* i_gid; void* i_uid; void* i_mode; int /*<<< orphan*/  i_ino; void* i_vtype; } ;
struct TYPE_11__ {unsigned long i_sblock; unsigned long i_eblock; } ;
struct TYPE_10__ {char* s_id; } ;

/* Variables and functions */
 unsigned long BFS_BSIZE ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 unsigned int BFS_INODES_PER_BLOCK ; 
 unsigned int BFS_ROOT_INO ; 
 struct bfs_sb_info* FUNC1 (TYPE_4__*) ; 
 unsigned long BFS_VDIR ; 
 unsigned long BFS_VREG ; 
 int EIO ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 void* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned int) ; 
 struct buffer_head* FUNC12 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct writeback_control *wbc)
{
	struct bfs_sb_info *info = FUNC1(inode->i_sb);
	unsigned int ino = (u16)inode->i_ino;
        unsigned long i_sblock;
	struct bfs_inode *di;
	struct buffer_head *bh;
	int block, off;
	int err = 0;

        FUNC7("ino=%08x\n", ino);

	if ((ino < BFS_ROOT_INO) || (ino > FUNC1(inode->i_sb)->si_lasti)) {
		FUNC11("Bad inode number %s:%08x\n", inode->i_sb->s_id, ino);
		return -EIO;
	}

	FUNC9(&info->bfs_lock);
	block = (ino - BFS_ROOT_INO) / BFS_INODES_PER_BLOCK + 1;
	bh = FUNC12(inode->i_sb, block);
	if (!bh) {
		FUNC11("Unable to read inode %s:%08x\n",
				inode->i_sb->s_id, ino);
		FUNC10(&info->bfs_lock);
		return -EIO;
	}

	off = (ino - BFS_ROOT_INO) % BFS_INODES_PER_BLOCK;
	di = (struct bfs_inode *)bh->b_data + off;

	if (ino == BFS_ROOT_INO)
		di->i_vtype = FUNC6(BFS_VDIR);
	else
		di->i_vtype = FUNC6(BFS_VREG);

	di->i_ino = FUNC5(ino);
	di->i_mode = FUNC6(inode->i_mode);
	di->i_uid = FUNC6(inode->i_uid);
	di->i_gid = FUNC6(inode->i_gid);
	di->i_nlink = FUNC6(inode->i_nlink);
	di->i_atime = FUNC6(inode->i_atime.tv_sec);
	di->i_mtime = FUNC6(inode->i_mtime.tv_sec);
	di->i_ctime = FUNC6(inode->i_ctime.tv_sec);
        i_sblock = FUNC0(inode)->i_sblock;
	di->i_sblock = FUNC6(i_sblock);
	di->i_eblock = FUNC6(FUNC0(inode)->i_eblock);
	di->i_eoffset = FUNC6(i_sblock * BFS_BSIZE + inode->i_size - 1);

	FUNC8(bh);
	if (wbc->sync_mode == WB_SYNC_ALL) {
		FUNC13(bh);
		if (FUNC3(bh) && !FUNC4(bh))
			err = -EIO;
	}
	FUNC2(bh);
	FUNC10(&info->bfs_lock);
	return err;
}