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
struct inode {int dummy; } ;
struct TYPE_2__ {int sb_bsize; int sb_bsize_shift; } ;
struct gfs2_sbd {int sd_max_rg_data; TYPE_1__ sd_sb; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gh; int /*<<< orphan*/  i_gl; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;
typedef  int loff_t ;

/* Variables and functions */
 int ENOSPC ; 
 long EOPNOTSUPP ; 
 int FALLOC_FL_KEEP_SIZE ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int PAGE_CACHE_SIZE ; 
 unsigned int RES_DINODE ; 
 unsigned int RES_QUOTA ; 
 unsigned int RES_RG_HDR ; 
 unsigned int RES_STATFS ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*,int,int*,unsigned int*,unsigned int*) ; 
 int FUNC3 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*) ; 
 int FUNC9 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC10 (struct gfs2_inode*) ; 
 int FUNC11 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*) ; 
 unsigned int FUNC13 (struct gfs2_inode*,unsigned int) ; 
 int FUNC14 (struct gfs2_sbd*) ; 
 int FUNC15 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int,int) ; 
 int FUNC17 (struct gfs2_sbd*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_inode*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct gfs2_inode*,int,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static long FUNC22(struct inode *inode, int mode, loff_t offset,
			   loff_t len)
{
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_alloc_parms ap = { .aflags = 0, };
	int alloc_required;
	unsigned int data_blocks = 0, ind_blocks = 0, rblocks;
	loff_t bytes, max_bytes;
	int error;
	loff_t bsize_mask = ~((loff_t)sdp->sd_sb.sb_bsize - 1);
	loff_t next = (offset + len - 1) >> sdp->sd_sb.sb_bsize_shift;
	loff_t max_chunk_size = UINT_MAX & bsize_mask;
	next = (next + 1) << sdp->sd_sb.sb_bsize_shift;

	/* We only support the FALLOC_FL_KEEP_SIZE mode */
	if (mode & ~FALLOC_FL_KEEP_SIZE)
		return -EOPNOTSUPP;

	error = FUNC14(sdp);
	if (error)
		return error;

	offset &= bsize_mask;

	len = next - offset;
	bytes = sdp->sd_max_rg_data * sdp->sd_sb.sb_bsize / 2;
	if (!bytes)
		bytes = UINT_MAX;
	bytes &= bsize_mask;
	if (bytes == 0)
		bytes = sdp->sd_sb.sb_bsize;

	error = FUNC15(ip);
	if (error)
		return error;

	FUNC6(ip->i_gl, LM_ST_EXCLUSIVE, 0, &ip->i_gh);
	error = FUNC5(&ip->i_gh);
	if (FUNC21(error))
		goto out_uninit;

	FUNC16(inode, offset, len);
	while (len > 0) {
		if (len < bytes)
			bytes = len;
		FUNC19(ip, offset, bytes, &alloc_required);
		if (!alloc_required) {
			len -= bytes;
			offset += bytes;
			continue;
		}
		error = FUNC11(ip);
		if (error)
			goto out_unlock;

retry:
		FUNC20(ip, bytes, &data_blocks, &ind_blocks);

		ap.target = data_blocks + ind_blocks;
		error = FUNC9(ip, &ap);
		if (error) {
			if (error == -ENOSPC && bytes > sdp->sd_sb.sb_bsize) {
				bytes >>= 1;
				bytes &= bsize_mask;
				if (bytes == 0)
					bytes = sdp->sd_sb.sb_bsize;
				goto retry;
			}
			goto out_qunlock;
		}
		max_bytes = bytes;
		FUNC2(ip, (len > max_chunk_size)? max_chunk_size: len,
				&max_bytes, &data_blocks, &ind_blocks);

		rblocks = RES_DINODE + ind_blocks + RES_STATFS + RES_QUOTA +
			  RES_RG_HDR + FUNC13(ip, data_blocks + ind_blocks);
		if (FUNC10(ip))
			rblocks += data_blocks ? data_blocks : 1;

		error = FUNC17(sdp, rblocks,
					 PAGE_CACHE_SIZE/sdp->sd_sb.sb_bsize);
		if (error)
			goto out_trans_fail;

		error = FUNC3(inode, offset, max_bytes, mode);
		FUNC18(sdp);

		if (error)
			goto out_trans_fail;

		len -= max_bytes;
		offset += max_bytes;
		FUNC8(ip);
		FUNC12(ip);
	}
	goto out_unlock;

out_trans_fail:
	FUNC8(ip);
out_qunlock:
	FUNC12(ip);
out_unlock:
	FUNC4(&ip->i_gh);
out_uninit:
	FUNC7(&ip->i_gh);
	return error;
}