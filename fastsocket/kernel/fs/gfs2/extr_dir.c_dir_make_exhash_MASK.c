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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct qstr {int len; scalar_t__ name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {int sd_hash_ptrs; TYPE_1__ sd_sb; } ;
struct gfs2_leaf {void* lf_entries; } ;
struct gfs2_inode {int i_entries; int i_depth; int /*<<< orphan*/  i_diskflags; int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dirent {void* de_rec_len; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int b_size; scalar_t__ b_data; int /*<<< orphan*/  b_blocknr; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFS2_DIF_EXHASH ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct gfs2_dirent*) ; 
 int FUNC3 (struct gfs2_dirent*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,int,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*,scalar_t__) ; 
 int /*<<< orphan*/  gfs2_dirent_last ; 
 struct gfs2_dirent* FUNC13 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,struct qstr*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 struct gfs2_leaf* FUNC17 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct inode *inode)
{
	struct gfs2_inode *dip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_dirent *dent;
	struct qstr args;
	struct buffer_head *bh, *dibh;
	struct gfs2_leaf *leaf;
	int y;
	u32 x;
	__be64 *lp;
	u64 bn;
	int error;

	error = FUNC14(dip, &dibh);
	if (error)
		return error;

	/*  Turn over a new leaf  */

	leaf = FUNC17(inode, &bh, 0);
	if (!leaf)
		return -ENOSPC;
	bn = bh->b_blocknr;

	FUNC9(sdp, dip->i_entries < (1 << 16));
	leaf->lf_entries = FUNC6(dip->i_entries);

	/*  Copy dirents  */

	FUNC11(bh, sizeof(struct gfs2_leaf), dibh,
			     sizeof(struct gfs2_dinode));

	/*  Find last entry  */

	x = 0;
	args.len = bh->b_size - sizeof(struct gfs2_dinode) +
		   sizeof(struct gfs2_leaf);
	args.name = bh->b_data;
	dent = FUNC13(&dip->i_inode, bh->b_data, bh->b_size,
				gfs2_dirent_last, &args, NULL);
	if (!dent) {
		FUNC5(bh);
		FUNC5(dibh);
		return -EIO;
	}
	if (FUNC2(dent)) {
		FUNC5(bh);
		FUNC5(dibh);
		return FUNC3(dent);
	}

	/*  Adjust the last dirent's record length
	   (Remember that dent still points to the last entry.)  */

	dent->de_rec_len = FUNC6(FUNC4(dent->de_rec_len) +
		sizeof(struct gfs2_dinode) -
		sizeof(struct gfs2_leaf));

	FUNC5(bh);

	/*  We're done with the new leaf block, now setup the new
	    hash table.  */

	FUNC15(dip->i_gl, dibh);
	FUNC10(dibh, sizeof(struct gfs2_dinode));

	lp = (__be64 *)(dibh->b_data + sizeof(struct gfs2_dinode));

	for (x = sdp->sd_hash_ptrs; x--; lp++)
		*lp = FUNC7(bn);

	FUNC16(inode, sdp->sd_sb.sb_bsize / 2);
	FUNC8(&dip->i_inode, 1);
	dip->i_diskflags |= GFS2_DIF_EXHASH;

	for (x = sdp->sd_hash_ptrs, y = -1; x; x >>= 1, y++) ;
	dip->i_depth = y;

	FUNC12(dip, dibh->b_data);

	FUNC5(dibh);

	return 0;
}