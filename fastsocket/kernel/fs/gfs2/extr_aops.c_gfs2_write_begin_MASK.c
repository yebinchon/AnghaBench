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
struct page {int dummy; } ;
struct TYPE_3__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_2__* sd_rindex; TYPE_1__ sd_sb; int /*<<< orphan*/  sd_statfs_inode; } ;
struct TYPE_4__ {int i_size; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gh; TYPE_2__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; int /*<<< orphan*/  aflags; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int ENOMEM ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned int RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 int RES_STATFS ; 
 int FUNC3 (struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_block_map ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_inode*) ; 
 int FUNC10 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 scalar_t__ FUNC11 (struct gfs2_inode*) ; 
 scalar_t__ FUNC12 (struct gfs2_inode*) ; 
 int FUNC13 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_inode*) ; 
 scalar_t__ FUNC15 (struct gfs2_inode*,unsigned int) ; 
 int FUNC16 (struct gfs2_sbd*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int FUNC19 (struct gfs2_inode*,struct page*) ; 
 int FUNC20 (struct gfs2_inode*,int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct gfs2_inode*,unsigned int,unsigned int*,unsigned int*) ; 
 struct page* FUNC22 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int FUNC24 (struct gfs2_inode*,struct page*) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 

__attribute__((used)) static int FUNC27(struct file *file, struct address_space *mapping,
			    loff_t pos, unsigned len, unsigned flags,
			    struct page **pagep, void **fsdata)
{
	struct gfs2_inode *ip = FUNC0(mapping->host);
	struct gfs2_sbd *sdp = FUNC1(mapping->host);
	struct gfs2_inode *m_ip = FUNC0(sdp->sd_statfs_inode);
	unsigned int data_blocks = 0, ind_blocks = 0, rblocks;
	unsigned requested = 0;
	int alloc_required;
	int error = 0;
	pgoff_t index = pos >> PAGE_CACHE_SHIFT;
	unsigned from = pos & (PAGE_CACHE_SIZE - 1);
	unsigned to = from + len;
	struct page *page;

	FUNC7(ip->i_gl, LM_ST_EXCLUSIVE, 0, &ip->i_gh);
	error = FUNC5(&ip->i_gh);
	if (FUNC25(error))
		goto out_uninit;
	if (&ip->i_inode == sdp->sd_rindex) {
		error = FUNC6(m_ip->i_gl, LM_ST_EXCLUSIVE,
					   GL_NOCACHE, &m_ip->i_gh);
		if (FUNC25(error)) {
			FUNC4(&ip->i_gh);
			goto out_uninit;
		}
	}

	error = FUNC20(ip, pos, len, &alloc_required);
	if (error)
		goto out_unlock;

	if (alloc_required || FUNC11(ip))
		FUNC21(ip, len, &data_blocks, &ind_blocks);

	if (alloc_required) {
		struct gfs2_alloc_parms ap = { .aflags = 0, };
		error = FUNC13(ip);
		if (error)
			goto out_unlock;

		requested = data_blocks + ind_blocks;
		ap.target = requested;
		error = FUNC10(ip, &ap);
		if (error)
			goto out_qunlock;
	}

	rblocks = RES_DINODE + ind_blocks;
	if (FUNC11(ip))
		rblocks += data_blocks ? data_blocks : 1;
	if (ind_blocks || data_blocks)
		rblocks += RES_STATFS + RES_QUOTA;
	if (&ip->i_inode == sdp->sd_rindex)
		rblocks += 2 * RES_STATFS;
	if (alloc_required)
		rblocks += FUNC15(ip, requested);

	error = FUNC16(sdp, rblocks,
				 PAGE_CACHE_SIZE/sdp->sd_sb.sb_bsize);
	if (error)
		goto out_trans_fail;

	error = -ENOMEM;
	flags |= AOP_FLAG_NOFS;
	page = FUNC22(mapping, index, flags);
	*pagep = page;
	if (FUNC25(!page))
		goto out_endtrans;

	if (FUNC12(ip)) {
		error = 0;
		if (pos + len > sdp->sd_sb.sb_bsize - sizeof(struct gfs2_dinode)) {
			error = FUNC19(ip, page);
			if (error == 0)
				goto prepare_write;
		} else if (!FUNC2(page)) {
			error = FUNC24(ip, page);
		}
		goto out;
	}

prepare_write:
	error = FUNC3(page, from, to, gfs2_block_map);
out:
	if (error == 0)
		return 0;

	FUNC26(page);
	FUNC23(page);
	FUNC17(sdp);
	if (pos + len > ip->i_inode.i_size)
		FUNC18(&ip->i_inode);
	goto out_trans_fail;

out_endtrans:
	FUNC17(sdp);
out_trans_fail:
	if (alloc_required) {
		FUNC9(ip);
out_qunlock:
		FUNC14(ip);
	}
out_unlock:
	if (&ip->i_inode == sdp->sd_rindex) {
		FUNC4(&m_ip->i_gh);
		FUNC8(&m_ip->i_gh);
	}
	FUNC4(&ip->i_gh);
out_uninit:
	FUNC8(&ip->i_gh);
	return error;
}