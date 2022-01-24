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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct super_block {int dummy; } ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int l2nbperpage; scalar_t__ ipaimap2; scalar_t__ ipaimap; void* inostamp; void* gengen; int /*<<< orphan*/  ait2; } ;
struct TYPE_4__ {int /*<<< orphan*/  next; int /*<<< orphan*/ * pprev; } ;
struct inode {int i_ino; int i_nlink; TYPE_1__ i_hash; int /*<<< orphan*/  i_flags; TYPE_2__* i_mapping; } ;
struct dinode {int /*<<< orphan*/  di_inostamp; int /*<<< orphan*/  di_gengen; } ;
typedef  int ino_t ;
struct TYPE_6__ {scalar_t__ ipimap; } ;
struct TYPE_5__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int AITBL_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FILESYSTEM_I ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int INOSPEREXT ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 struct jfs_sb_info* FUNC2 (struct super_block*) ; 
 int L2PSIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct dinode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  jfs_metapage_aops ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC9 (struct super_block*) ; 
 struct metapage* FUNC10 (struct inode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct metapage*) ; 

struct inode *FUNC12(struct super_block *sb, ino_t inum, int secondary)
{
	struct jfs_sb_info *sbi = FUNC2(sb);
	uint address;
	struct dinode *dp;
	struct inode *ip;
	struct metapage *mp;

	ip = FUNC9(sb);
	if (ip == NULL) {
		FUNC6("diReadSpecial: new_inode returned NULL!");
		return ip;
	}

	if (secondary) {
		address = FUNC3(&sbi->ait2) >> sbi->l2nbperpage;
		FUNC1(ip)->ipimap = sbi->ipaimap2;
	} else {
		address = AITBL_OFF >> L2PSIZE;
		FUNC1(ip)->ipimap = sbi->ipaimap;
	}

	FUNC0(inum < INOSPEREXT);

	ip->i_ino = inum;

	address += inum >> 3;	/* 8 inodes per 4K page */

	/* read the page of fixed disk inode (AIT) in raw mode */
	mp = FUNC10(ip, address << sbi->l2nbperpage, PSIZE, 1);
	if (mp == NULL) {
		ip->i_nlink = 1;	/* Don't want iput() deleting it */
		FUNC5(ip);
		return (NULL);
	}

	/* get the pointer to the disk inode of interest */
	dp = (struct dinode *) (mp->data);
	dp += inum % 8;		/* 8 inodes per 4K page */

	/* copy on-disk inode to in-memory inode */
	if ((FUNC4(dp, ip)) != 0) {
		/* handle bad return by returning NULL for ip */
		ip->i_nlink = 1;	/* Don't want iput() deleting it */
		FUNC5(ip);
		/* release the page */
		FUNC11(mp);
		return (NULL);

	}

	ip->i_mapping->a_ops = &jfs_metapage_aops;
	FUNC8(ip->i_mapping, GFP_NOFS);

	/* Allocations to metadata inodes should not affect quotas */
	ip->i_flags |= S_NOQUOTA;

	if ((inum == FILESYSTEM_I) && (FUNC1(ip)->ipimap == sbi->ipaimap)) {
		sbi->gengen = FUNC7(dp->di_gengen);
		sbi->inostamp = FUNC7(dp->di_inostamp);
	}

	/* release the page */
	FUNC11(mp);

	/*
	 * __mark_inode_dirty expects inodes to be hashed.  Since we don't
	 * want special inodes in the fileset inode space, we make them
	 * appear hashed, but do not put on any lists.  hlist_del()
	 * will work fine and require no locking.
	 */
	ip->i_hash.pprev = &ip->i_hash.next;

	return (ip);
}