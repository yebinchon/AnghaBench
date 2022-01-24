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
struct super_block {char* s_id; } ;
struct inode {unsigned long i_ino; struct super_block* i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; scalar_t__ i_size; int /*<<< orphan*/  i_data; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_sb_info {unsigned long si_lasti; scalar_t__ si_lf_eblk; int /*<<< orphan*/  bfs_lock; struct buffer_head* si_sbh; int /*<<< orphan*/  si_imap; int /*<<< orphan*/  si_freei; int /*<<< orphan*/  si_freeb; } ;
struct bfs_inode_info {scalar_t__ i_sblock; scalar_t__ i_eblock; scalar_t__ i_dsk_ino; } ;
struct bfs_inode {int dummy; } ;

/* Variables and functions */
 struct bfs_inode_info* FUNC0 (struct inode*) ; 
 unsigned long BFS_INODES_PER_BLOCK ; 
 unsigned long BFS_ROOT_INO ; 
 struct bfs_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 struct buffer_head* FUNC13 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct inode *inode)
{
	unsigned long ino = inode->i_ino;
	struct bfs_inode *di;
	struct buffer_head *bh;
	int block, off;
	struct super_block *s = inode->i_sb;
	struct bfs_sb_info *info = FUNC1(s);
	struct bfs_inode_info *bi = FUNC0(inode);

	FUNC5("ino=%08lx\n", ino);

	FUNC14(&inode->i_data, 0);

	if ((ino < BFS_ROOT_INO) || (ino > info->si_lasti)) {
		FUNC12("invalid ino=%08lx\n", ino);
		return;
	}
	
	inode->i_size = 0;
	inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME_SEC;
	FUNC10(&info->bfs_lock);
	FUNC8(inode);

	block = (ino - BFS_ROOT_INO) / BFS_INODES_PER_BLOCK + 1;
	bh = FUNC13(s, block);
	if (!bh) {
		FUNC12("Unable to read inode %s:%08lx\n",
					inode->i_sb->s_id, ino);
		FUNC11(&info->bfs_lock);
		return;
	}
	off = (ino - BFS_ROOT_INO) % BFS_INODES_PER_BLOCK;
	di = (struct bfs_inode *)bh->b_data + off;
	FUNC9((void *)di, 0, sizeof(struct bfs_inode));
	FUNC7(bh);
	FUNC2(bh);

        if (bi->i_dsk_ino) {
		if (bi->i_sblock)
			info->si_freeb += bi->i_eblock + 1 - bi->i_sblock;
		info->si_freei++;
		FUNC3(ino, info->si_imap);
		FUNC6("delete_inode", s);
        }

	/*
	 * If this was the last file, make the previous block
	 * "last block of the last file" even if there is no
	 * real file there, saves us 1 gap.
	 */
	if (info->si_lf_eblk == bi->i_eblock) {
		info->si_lf_eblk = bi->i_sblock - 1;
		FUNC7(info->si_sbh);
	}
	FUNC11(&info->bfs_lock);
	FUNC4(inode);
}