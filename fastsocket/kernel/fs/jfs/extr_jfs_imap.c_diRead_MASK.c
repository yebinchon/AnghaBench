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
typedef  int u32 ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {unsigned long l2nbperpage; int nbperpage; int l2niperblk; struct inode* ipimap; } ;
struct inomap {scalar_t__ im_nbperiext; } ;
struct inode {int i_ino; int /*<<< orphan*/  i_sb; } ;
struct iag {int /*<<< orphan*/  agstart; int /*<<< orphan*/ * inoext; } ;
struct dinode {int /*<<< orphan*/  di_nlink; int /*<<< orphan*/  di_number; } ;
typedef  unsigned long s64 ;
struct TYPE_2__ {int active_ag; int /*<<< orphan*/  agno; struct inomap* i_imap; struct inode* ipimap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,struct jfs_sb_info*) ; 
 int EIO ; 
 int ESTALE ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int,unsigned long) ; 
 int INOSPERIAG ; 
 int INOSPERPAGE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 TYPE_1__* FUNC5 (struct inode*) ; 
 struct jfs_sb_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int L2INOSPEREXT ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  RDWRLOCK_IMAP ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct dinode*,struct inode*) ; 
 int FUNC9 (struct inomap*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 struct metapage* FUNC16 (struct inode*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct metapage*) ; 

int FUNC18(struct inode *ip)
{
	struct jfs_sb_info *sbi = FUNC6(ip->i_sb);
	int iagno, ino, extno, rc;
	struct inode *ipimap;
	struct dinode *dp;
	struct iag *iagp;
	struct metapage *mp;
	s64 blkno, agstart;
	struct inomap *imap;
	int block_offset;
	int inodes_left;
	unsigned long pageno;
	int rel_inode;

	FUNC12("diRead: ino = %ld", ip->i_ino);

	ipimap = sbi->ipimap;
	FUNC5(ip)->ipimap = ipimap;

	/* determine the iag number for this inode (number) */
	iagno = FUNC2(ip->i_ino);

	/* read the iag */
	imap = FUNC5(ipimap)->i_imap;
	FUNC3(ipimap, RDWRLOCK_IMAP);
	rc = FUNC9(imap, iagno, &mp);
	FUNC4(ipimap);
	if (rc) {
		FUNC10("diRead: diIAGRead returned %d", rc);
		return (rc);
	}

	iagp = (struct iag *) mp->data;

	/* determine inode extent that holds the disk inode */
	ino = ip->i_ino & (INOSPERIAG - 1);
	extno = ino >> L2INOSPEREXT;

	if ((FUNC15(&iagp->inoext[extno]) != imap->im_nbperiext) ||
	    (FUNC7(&iagp->inoext[extno]) == 0)) {
		FUNC17(mp);
		return -ESTALE;
	}

	/* get disk block number of the page within the inode extent
	 * that holds the disk inode.
	 */
	blkno = FUNC1(&iagp->inoext[extno], ino, sbi->l2nbperpage);

	/* get the ag for the iag */
	agstart = FUNC14(iagp->agstart);

	FUNC17(mp);

	rel_inode = (ino & (INOSPERPAGE - 1));
	pageno = blkno >> sbi->l2nbperpage;

	if ((block_offset = ((u32) blkno & (sbi->nbperpage - 1)))) {
		/*
		 * OS/2 didn't always align inode extents on page boundaries
		 */
		inodes_left =
		     (sbi->nbperpage - block_offset) << sbi->l2niperblk;

		if (rel_inode < inodes_left)
			rel_inode += block_offset << sbi->l2niperblk;
		else {
			pageno += 1;
			rel_inode -= inodes_left;
		}
	}

	/* read the page of disk inode */
	mp = FUNC16(ipimap, pageno << sbi->l2nbperpage, PSIZE, 1);
	if (!mp) {
		FUNC10("diRead: read_metapage failed");
		return -EIO;
	}

	/* locate the disk inode requested */
	dp = (struct dinode *) mp->data;
	dp += rel_inode;

	if (ip->i_ino != FUNC13(dp->di_number)) {
		FUNC11(ip->i_sb, "diRead: i_ino != di_number");
		rc = -EIO;
	} else if (FUNC13(dp->di_nlink) == 0)
		rc = -ESTALE;
	else
		/* copy the disk inode to the in-memory inode */
		rc = FUNC8(dp, ip);

	FUNC17(mp);

	/* set the ag for the inode */
	FUNC5(ip)->agno = FUNC0(agstart, sbi);
	FUNC5(ip)->active_ag = -1;

	return (rc);
}