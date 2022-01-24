#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_3__ {int s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_BH_READAHEAD ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct inode*,unsigned long long,int,struct buffer_head**,int,int (*) (struct super_block*,struct buffer_head*)) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct inode*,int,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int,struct buffer_head**,int,int (*) (struct super_block*,struct buffer_head*)) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct inode *inode, u64 v_block, int nr,
			   struct buffer_head *bhs[], int flags,
			   int (*validate)(struct super_block *sb,
					   struct buffer_head *bh))
{
	int rc = 0;
	u64 p_block, p_count;
	int i, count, done = 0;

	FUNC6("(inode = %p, v_block = %llu, nr = %d, bhs = %p, "
		   "flags = %x, validate = %p)\n",
		   inode, (unsigned long long)v_block, nr, bhs, flags,
		   validate);

	if (((v_block + nr - 1) << inode->i_sb->s_blocksize_bits) >=
	    FUNC4(inode)) {
		FUNC0(!(flags & OCFS2_BH_READAHEAD));
		goto out;
	}

	while (done < nr) {
		FUNC3(&FUNC2(inode)->ip_alloc_sem);
		rc = FUNC9(inode, v_block + done,
						 &p_block, &p_count, NULL);
		FUNC11(&FUNC2(inode)->ip_alloc_sem);
		if (rc) {
			FUNC7(rc);
			break;
		}

		if (!p_block) {
			rc = -EIO;
			FUNC5(ML_ERROR,
			     "Inode #%llu contains a hole at offset %llu\n",
			     (unsigned long long)FUNC2(inode)->ip_blkno,
			     (unsigned long long)(v_block + done) <<
			     inode->i_sb->s_blocksize_bits);
			break;
		}

		count = nr - done;
		if (p_count < count)
			count = p_count;

		/*
		 * If the caller passed us bhs, they should have come
		 * from a previous readahead call to this function.  Thus,
		 * they should have the right b_blocknr.
		 */
		for (i = 0; i < count; i++) {
			if (!bhs[done + i])
				continue;
			FUNC0(bhs[done + i]->b_blocknr != (p_block + i));
		}

		rc = FUNC10(FUNC1(inode), p_block, count,
				       bhs + done, flags, validate);
		if (rc) {
			FUNC7(rc);
			break;
		}
		done += count;
	}

out:
	FUNC8(rc);
	return rc;
}