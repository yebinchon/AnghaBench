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
struct ufs_sb_private_info {scalar_t__ s_sbbase; unsigned int s_fpb; } ;
struct ufs_inode_info {scalar_t__ i_lastfrag; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long,...) ; 
 struct ufs_inode_info* FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct buffer_head* FUNC6 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct super_block*,void*) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 void* FUNC10 (struct ufs_sb_private_info*,struct ufs_inode_info*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct inode*,void*,scalar_t__,scalar_t__,unsigned int,int*,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

__attribute__((used)) static struct buffer_head *
FUNC13(struct inode *inode, u64 fragment,
		  sector_t new_fragment, unsigned int required, int *err,
		  long *phys, int *new, struct page *locked_page)
{
	struct ufs_inode_info *ufsi = FUNC2(inode);
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC3(sb)->s_uspi;
	struct buffer_head * result;
	unsigned blockoff, lastblockoff;
	u64 tmp, goal, lastfrag, block, lastblock;
	void *p, *p2;

	FUNC1("ENTER, ino %lu, fragment %llu, new_fragment %llu, required %u, "
	     "metadata %d\n", inode->i_ino, (unsigned long long)fragment,
	     (unsigned long long)new_fragment, required, !phys);

        /* TODO : to be done for write support
        if ( (flags & UFS_TYPE_MASK) == UFS_TYPE_UFS2)
             goto ufs2;
         */

	block = FUNC9 (fragment);
	blockoff = FUNC8 (fragment);
	p = FUNC10(uspi, ufsi, block);

	goal = 0;

repeat:
	tmp = FUNC7(sb, p);

	lastfrag = ufsi->i_lastfrag;
	if (tmp && fragment < lastfrag) {
		if (!phys) {
			result = FUNC6(sb, uspi->s_sbbase + tmp + blockoff);
			if (tmp == FUNC7(sb, p)) {
				FUNC1("EXIT, result %llu\n",
				     (unsigned long long)tmp + blockoff);
				return result;
			}
			FUNC4 (result);
			goto repeat;
		} else {
			*phys = uspi->s_sbbase + tmp + blockoff;
			return NULL;
		}
	}

	lastblock = FUNC9 (lastfrag);
	lastblockoff = FUNC8 (lastfrag);
	/*
	 * We will extend file into new block beyond last allocated block
	 */
	if (lastblock < block) {
		/*
		 * We must reallocate last allocated block
		 */
		if (lastblockoff) {
			p2 = FUNC10(uspi, ufsi, lastblock);
			tmp = FUNC11(inode, p2, lastfrag,
						FUNC7(sb, p2),
						uspi->s_fpb - lastblockoff,
						err, locked_page);
			if (!tmp) {
				if (lastfrag != ufsi->i_lastfrag)
					goto repeat;
				else
					return NULL;
			}
			lastfrag = ufsi->i_lastfrag;
			
		}
		tmp = FUNC7(sb,
					 FUNC10(uspi, ufsi,
								 lastblock));
		if (tmp)
			goal = tmp + uspi->s_fpb;
		tmp = FUNC11 (inode, p, fragment - blockoff, 
					 goal, required + blockoff,
					 err,
					 phys != NULL ? locked_page : NULL);
	} else if (lastblock == block) {
	/*
	 * We will extend last allocated block
	 */
		tmp = FUNC11(inode, p, fragment -
					(blockoff - lastblockoff),
					FUNC7(sb, p),
					required +  (blockoff - lastblockoff),
					err, phys != NULL ? locked_page : NULL);
	} else /* (lastblock > block) */ {
	/*
	 * We will allocate new block before last allocated block
	 */
		if (block) {
			tmp = FUNC7(sb,
						 FUNC10(uspi, ufsi, block - 1));
			if (tmp)
				goal = tmp + uspi->s_fpb;
		}
		tmp = FUNC11(inode, p, fragment - blockoff,
					goal, uspi->s_fpb, err,
					phys != NULL ? locked_page : NULL);
	}
	if (!tmp) {
		if ((!blockoff && FUNC7(sb, p)) ||
		    (blockoff && lastfrag != ufsi->i_lastfrag))
			goto repeat;
		*err = -ENOSPC;
		return NULL;
	}

	if (!phys) {
		result = FUNC6(sb, uspi->s_sbbase + tmp + blockoff);
	} else {
		*phys = uspi->s_sbbase + tmp + blockoff;
		result = NULL;
		*err = 0;
		*new = 1;
	}

	inode->i_ctime = CURRENT_TIME_SEC;
	if (FUNC0(inode))
		FUNC12 (inode);
	FUNC5(inode);
	FUNC1("EXIT, result %llu\n", (unsigned long long)tmp + blockoff);
	return result;

     /* This part : To be implemented ....
        Required only for writing, not required for READ-ONLY.
ufs2:

	u2_block = ufs_fragstoblks(fragment);
	u2_blockoff = ufs_fragnum(fragment);
	p = ufsi->i_u1.u2_i_data + block;
	goal = 0;

repeat2:
	tmp = fs32_to_cpu(sb, *p);
	lastfrag = ufsi->i_lastfrag;

     */
}