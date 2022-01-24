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
typedef  int /*<<< orphan*/  tid_t ;
struct super_block {int dummy; } ;
struct jfs_superblock {int /*<<< orphan*/  s_flag; } ;
struct inode {int /*<<< orphan*/  i_size; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_2__ {int mntflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_FORCE ; 
 int /*<<< orphan*/  FILESYSTEM_I ; 
 int JFS_BAD_SAIT ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ PSIZE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct super_block*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct super_block *sb, s64 blkno,
			    int xlen, s64 *xaddr)
{
	struct jfs_superblock *j_sb;
	struct buffer_head *bh;
	struct inode *ip;
	tid_t tid;

	/* if AIT2 ipmap2 is bad, do not try to update it */
	if (FUNC0(sb)->mntflag & JFS_BAD_SAIT)	/* s_flag */
		return;
	ip = FUNC4(sb, FILESYSTEM_I, 1);
	if (ip == NULL) {
		FUNC0(sb)->mntflag |= JFS_BAD_SAIT;
		if (FUNC7(sb, &bh))
			return;
		j_sb = (struct jfs_superblock *)bh->b_data;
		j_sb->s_flag |= FUNC2(JFS_BAD_SAIT);

		FUNC6(bh);
		FUNC8(bh);
		FUNC1(bh);
		return;
	}

	/* start transaction */
	tid = FUNC10(sb, COMMIT_FORCE);
	/* update the inode map addressing structure to point to it */
	if (FUNC13(tid, ip, 0, blkno, xlen, xaddr, 0)) {
		FUNC0(sb)->mntflag |= JFS_BAD_SAIT;
		FUNC9(tid, 1);
		goto cleanup;

	}
	/* update the inode map's inode to reflect the extension */
	ip->i_size += PSIZE;
	FUNC5(ip, PSIZE);
	FUNC11(tid, 1, &ip, COMMIT_FORCE);
      cleanup:
	FUNC12(tid);
	FUNC3(ip);
}