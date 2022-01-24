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
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int nbperpage; int /*<<< orphan*/  l2nbperpage; } ;
struct inomap {int im_freeiag; scalar_t__ im_nextiag; struct inode* im_ipimap; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct iag {void* iagfree; void** inosmap; void* nfreeexts; scalar_t__ nfreeinos; void* extfreeback; void* extfreefwd; void* inofreeback; void* inofreefwd; void* iagnum; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_FORCE ; 
 int /*<<< orphan*/  COMMIT_PWMAP ; 
 int EIO ; 
 int ENOSPC ; 
 int EXTSPERIAG ; 
 int /*<<< orphan*/  FUNC0 (struct inomap*) ; 
 int /*<<< orphan*/  FUNC1 (struct inomap*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 TYPE_1__* FUNC7 (struct inode*) ; 
 struct jfs_sb_info* FUNC8 (struct super_block*) ; 
 scalar_t__ L2PSIZE ; 
 int MAXIAGS ; 
 int ONES ; 
 int PSIZE ; 
 int /*<<< orphan*/  RDWRLOCK_IMAP ; 
 int SMAPSZ ; 
 void* FUNC9 (int) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inomap*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct metapage*) ; 
 struct metapage* FUNC16 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,char*) ; 
 int FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (struct iag*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,struct inode*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC29(struct inomap * imap, int *iagnop, int agno, struct metapage ** mpp)
{
	int rc;
	int iagno, i, xlen;
	struct inode *ipimap;
	struct super_block *sb;
	struct jfs_sb_info *sbi;
	struct metapage *mp;
	struct iag *iagp;
	s64 xaddr = 0;
	s64 blkno;
	tid_t tid;
	struct inode *iplist[1];

	/* pick up pointers to the inode map and mount inodes */
	ipimap = imap->im_ipimap;
	sb = ipimap->i_sb;
	sbi = FUNC8(sb);

	/* acquire the free iag lock */
	FUNC0(imap);

	/* if there are any iags on the inode map free iag list,
	 * allocate the iag from the head of the list.
	 */
	if (imap->im_freeiag >= 0) {
		/* pick up the iag number at the head of the list */
		iagno = imap->im_freeiag;

		/* determine the logical block number of the iag */
		blkno = FUNC2(iagno, sbi->l2nbperpage);
	} else {
		/* no free iags. the inode map will have to be extented
		 * to include a new iag.
		 */

		/* acquire inode map lock */
		FUNC5(ipimap, RDWRLOCK_IMAP);

		if (ipimap->i_size >> L2PSIZE != imap->im_nextiag + 1) {
			FUNC6(ipimap);
			FUNC1(imap);
			FUNC18(imap->im_ipimap->i_sb,
				  "diNewIAG: ipimap->i_size is wrong");
			return -EIO;
		}


		/* get the next avaliable iag number */
		iagno = imap->im_nextiag;

		/* make sure that we have not exceeded the maximum inode
		 * number limit.
		 */
		if (iagno > (MAXIAGS - 1)) {
			/* release the inode map lock */
			FUNC6(ipimap);

			rc = -ENOSPC;
			goto out;
		}

		/*
		 * synchronously append new iag page.
		 */
		/* determine the logical address of iag page to append */
		blkno = FUNC2(iagno, sbi->l2nbperpage);

		/* Allocate extent for new iag page */
		xlen = sbi->nbperpage;
		if ((rc = FUNC10(ipimap, 0, (s64) xlen, &xaddr))) {
			/* release the inode map lock */
			FUNC6(ipimap);

			goto out;
		}

		/*
		 * start transaction of update of the inode map
		 * addressing structure pointing to the new iag page;
		 */
		tid = FUNC24(sb, COMMIT_FORCE);
		FUNC21(&FUNC7(ipimap)->commit_mutex);

		/* update the inode map addressing structure to point to it */
		if ((rc =
		     FUNC27(tid, ipimap, 0, blkno, xlen, &xaddr, 0))) {
			FUNC26(tid);
			FUNC22(&FUNC7(ipimap)->commit_mutex);
			/* Free the blocks allocated for the iag since it was
			 * not successfully added to the inode map
			 */
			FUNC11(ipimap, xaddr, (s64) xlen);

			/* release the inode map lock */
			FUNC6(ipimap);

			goto out;
		}

		/* update the inode map's inode to reflect the extension */
		ipimap->i_size += PSIZE;
		FUNC17(ipimap, PSIZE);

		/* assign a buffer for the page */
		mp = FUNC16(ipimap, blkno, PSIZE, 0);
		if (!mp) {
			/*
			 * This is very unlikely since we just created the
			 * extent, but let's try to handle it correctly
			 */
			FUNC28(tid, ipimap, ipimap->i_size - PSIZE,
				   COMMIT_PWMAP);

			FUNC23(tid, 0);
			FUNC26(tid);
			FUNC22(&FUNC7(ipimap)->commit_mutex);

			/* release the inode map lock */
			FUNC6(ipimap);

			rc = -EIO;
			goto out;
		}
		iagp = (struct iag *) mp->data;

		/* init the iag */
		FUNC20(iagp, 0, sizeof(struct iag));
		iagp->iagnum = FUNC9(iagno);
		iagp->inofreefwd = iagp->inofreeback = FUNC9(-1);
		iagp->extfreefwd = iagp->extfreeback = FUNC9(-1);
		iagp->iagfree = FUNC9(-1);
		iagp->nfreeinos = 0;
		iagp->nfreeexts = FUNC9(EXTSPERIAG);

		/* initialize the free inode summary map (free extent
		 * summary map initialization handled by bzero).
		 */
		for (i = 0; i < SMAPSZ; i++)
			iagp->inosmap[i] = FUNC9(ONES);

		/*
		 * Write and sync the metapage
		 */
		FUNC15(mp);

		/*
		 * txCommit(COMMIT_FORCE) will synchronously write address
		 * index pages and inode after commit in careful update order
		 * of address index pages (right to left, bottom up);
		 */
		iplist[0] = ipimap;
		rc = FUNC25(tid, 1, &iplist[0], COMMIT_FORCE);

		FUNC26(tid);
		FUNC22(&FUNC7(ipimap)->commit_mutex);

		FUNC14(sb, blkno, xlen, &xaddr);

		/* update the next avaliable iag number */
		imap->im_nextiag += 1;

		/* Add the iag to the iag free list so we don't lose the iag
		 * if a failure happens now.
		 */
		imap->im_freeiag = iagno;

		/* Until we have logredo working, we want the imap inode &
		 * control page to be up to date.
		 */
		FUNC13(ipimap);

		/* release the inode map lock */
		FUNC6(ipimap);
	}

	/* obtain read lock on map */
	FUNC3(ipimap, RDWRLOCK_IMAP);

	/* read the iag */
	if ((rc = FUNC12(imap, iagno, &mp))) {
		FUNC4(ipimap);
		rc = -EIO;
		goto out;
	}
	iagp = (struct iag *) mp->data;

	/* remove the iag from the iag free list */
	imap->im_freeiag = FUNC19(iagp->iagfree);
	iagp->iagfree = FUNC9(-1);

	/* set the return iag number and buffer pointer */
	*iagnop = iagno;
	*mpp = mp;

      out:
	/* release the iag free lock */
	FUNC1(imap);

	return (rc);
}