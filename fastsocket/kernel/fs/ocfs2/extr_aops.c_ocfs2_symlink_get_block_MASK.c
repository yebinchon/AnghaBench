#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct TYPE_8__ {TYPE_1__* l_recs; } ;
struct TYPE_9__ {TYPE_2__ i_list; } ;
struct ocfs2_dinode {TYPE_3__ id2; int /*<<< orphan*/  i_clusters; } ;
struct inode {TYPE_4__* i_sb; } ;
struct buffer_head {int b_size; scalar_t__ b_data; int /*<<< orphan*/  b_page; } ;
typedef  int sector_t ;
struct TYPE_10__ {int s_blocksize_bits; } ;
struct TYPE_7__ {int /*<<< orphan*/  e_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct ocfs2_super* FUNC1 (TYPE_4__*) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct inode*,unsigned long long,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int FUNC18 (struct inode*,struct buffer_head**) ; 
 struct buffer_head* FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC21(struct inode *inode, sector_t iblock,
				   struct buffer_head *bh_result, int create)
{
	int err = -EIO;
	int status;
	struct ocfs2_dinode *fe = NULL;
	struct buffer_head *bh = NULL;
	struct buffer_head *buffer_cache_bh = NULL;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	void *kaddr;

	FUNC12("(0x%p, %llu, 0x%p, %d)\n", inode,
		   (unsigned long long)iblock, bh_result, create);

	FUNC0(FUNC16(inode));

	if ((iblock << inode->i_sb->s_blocksize_bits) > PATH_MAX + 1) {
		FUNC11(ML_ERROR, "block offset > PATH_MAX: %llu",
		     (unsigned long long)iblock);
		goto bail;
	}

	status = FUNC18(inode, &bh);
	if (status < 0) {
		FUNC13(status);
		goto bail;
	}
	fe = (struct ocfs2_dinode *) bh->b_data;

	if ((u64)iblock >= FUNC15(inode->i_sb,
						    FUNC7(fe->i_clusters))) {
		FUNC11(ML_ERROR, "block offset is outside the allocated size: "
		     "%llu\n", (unsigned long long)iblock);
		goto bail;
	}

	/* We don't use the page cache to create symlink data, so if
	 * need be, copy it over from the buffer cache. */
	if (!FUNC4(bh_result) && FUNC17(inode)) {
		u64 blkno = FUNC8(fe->id2.i_list.l_recs[0].e_blkno) +
			    iblock;
		buffer_cache_bh = FUNC19(osb->sb, blkno);
		if (!buffer_cache_bh) {
			FUNC11(ML_ERROR, "couldn't getblock for symlink!\n");
			goto bail;
		}

		/* we haven't locked out transactions, so a commit
		 * could've happened. Since we've got a reference on
		 * the bh, even if it commits while we're doing the
		 * copy, the data is still good. */
		if (FUNC3(buffer_cache_bh)
		    && FUNC17(inode)) {
			kaddr = FUNC5(bh_result->b_page, KM_USER0);
			if (!kaddr) {
				FUNC11(ML_ERROR, "couldn't kmap!\n");
				goto bail;
			}
			FUNC10(kaddr + (bh_result->b_size * iblock),
			       buffer_cache_bh->b_data,
			       bh_result->b_size);
			FUNC6(kaddr, KM_USER0);
			FUNC20(bh_result);
		}
		FUNC2(buffer_cache_bh);
	}

	FUNC9(bh_result, inode->i_sb,
	       FUNC8(fe->id2.i_list.l_recs[0].e_blkno) + iblock);

	err = 0;

bail:
	FUNC2(bh);

	FUNC14(err);
	return err;
}