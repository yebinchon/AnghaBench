#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_diskflags; scalar_t__ i_entries; scalar_t__ i_no_addr; } ;
struct gfs2_dirent {int dummy; } ;
struct file_ra_state {int dummy; } ;
struct dirent_gather {scalar_t__ offset; struct gfs2_dirent const** pdent; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  filldir_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int GFS2_DIF_EXHASH ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct gfs2_dirent const*) ; 
 int FUNC3 (struct gfs2_dirent const*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,struct file_ra_state*) ; 
 int FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,struct gfs2_dirent const**,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,char*,unsigned long long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_dirent_gather ; 
 struct gfs2_dirent* FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dirent_gather*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*) ; 
 int FUNC11 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_dirent const**) ; 
 struct gfs2_dirent** FUNC13 (int,int /*<<< orphan*/ ) ; 

int FUNC14(struct inode *inode, u64 *offset, void *opaque,
		  filldir_t filldir, struct file_ra_state *f_ra)
{
	struct gfs2_inode *dip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct dirent_gather g;
	const struct gfs2_dirent **darr, *dent;
	struct buffer_head *dibh;
	int copied = 0;
	int error;

	if (!dip->i_entries)
		return 0;

	if (dip->i_diskflags & GFS2_DIF_EXHASH)
		return FUNC5(inode, offset, opaque, filldir, f_ra);

	if (!FUNC10(dip)) {
		FUNC8(dip);
		return -EIO;
	}

	error = FUNC11(dip, &dibh);
	if (error)
		return error;

	error = -ENOMEM;
	/* 96 is max number of dirents which can be stuffed into an inode */
	darr = FUNC13(96 * sizeof(struct gfs2_dirent *), GFP_NOFS);
	if (darr) {
		g.pdent = darr;
		g.offset = 0;
		dent = FUNC9(inode, dibh->b_data, dibh->b_size,
					gfs2_dirent_gather, NULL, &g);
		if (FUNC2(dent)) {
			error = FUNC3(dent);
			goto out;
		}
		if (dip->i_entries != g.offset) {
			FUNC7(sdp, "Number of entries corrupt in dir %llu, "
				"ip->i_entries (%u) != g.offset (%u)\n",
				(unsigned long long)dip->i_no_addr,
				dip->i_entries,
				g.offset);
			error = -EIO;
			goto out;
		}
		error = FUNC6(dip, offset, opaque, filldir, darr,
					dip->i_entries, &copied);
out:
		FUNC12(darr);
	}

	if (error > 0)
		error = 0;

	FUNC4(dibh);

	return error;
}