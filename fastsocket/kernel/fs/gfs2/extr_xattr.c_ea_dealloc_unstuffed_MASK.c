#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {scalar_t__ rd_length; int /*<<< orphan*/  rd_gl; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; TYPE_1__ i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_ea_header {unsigned int ea_num_ptrs; int /*<<< orphan*/  ea_type; int /*<<< orphan*/  ea_flags; int /*<<< orphan*/  ea_rec_len; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 scalar_t__* FUNC0 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  GFS2_EAFLAG_LAST ; 
 int /*<<< orphan*/  GFS2_EATYPE_UNUSED ; 
 scalar_t__ FUNC1 (struct gfs2_ea_header*) ; 
 scalar_t__ FUNC2 (struct gfs2_ea_header*) ; 
 scalar_t__ FUNC3 (struct gfs2_ea_header*) ; 
 struct gfs2_sbd* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_EATTR ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 struct gfs2_rgrpd* FUNC9 (struct gfs2_sbd*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_holder*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC15 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC16 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC18 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC20(struct gfs2_inode *ip, struct buffer_head *bh,
				struct gfs2_ea_header *ea,
				struct gfs2_ea_header *prev, void *private)
{
	int *leave = private;
	struct gfs2_sbd *sdp = FUNC4(&ip->i_inode);
	struct gfs2_rgrpd *rgd;
	struct gfs2_holder rg_gh;
	struct buffer_head *dibh;
	__be64 *dataptrs;
	u64 bn = 0;
	u64 bstart = 0;
	unsigned int blen = 0;
	unsigned int blks = 0;
	unsigned int x;
	int error;

	error = FUNC16(sdp);
	if (error)
		return error;

	if (FUNC2(ea))
		return 0;

	dataptrs = FUNC0(ea);
	for (x = 0; x < ea->ea_num_ptrs; x++, dataptrs++) {
		if (*dataptrs) {
			blks++;
			bn = FUNC5(*dataptrs);
		}
	}
	if (!blks)
		return 0;

	rgd = FUNC9(sdp, bn, 1);
	if (!rgd) {
		FUNC10(ip);
		return -EIO;
	}

	error = FUNC14(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, &rg_gh);
	if (error)
		return error;

	error = FUNC18(sdp, rgd->rd_length + RES_DINODE +
				 RES_EATTR + RES_STATFS + RES_QUOTA, blks);
	if (error)
		goto out_gunlock;

	FUNC17(ip->i_gl, bh);

	dataptrs = FUNC0(ea);
	for (x = 0; x < ea->ea_num_ptrs; x++, dataptrs++) {
		if (!*dataptrs)
			break;
		bn = FUNC5(*dataptrs);

		if (bstart + blen == bn)
			blen++;
		else {
			if (bstart)
				FUNC12(ip, bstart, blen);
			bstart = bn;
			blen = 1;
		}

		*dataptrs = 0;
		FUNC8(&ip->i_inode, -1);
	}
	if (bstart)
		FUNC12(ip, bstart, blen);

	if (prev && !leave) {
		u32 len;

		len = FUNC3(prev) + FUNC3(ea);
		prev->ea_rec_len = FUNC7(len);

		if (FUNC1(ea))
			prev->ea_flags |= GFS2_EAFLAG_LAST;
	} else {
		ea->ea_type = GFS2_EATYPE_UNUSED;
		ea->ea_num_ptrs = 0;
	}

	error = FUNC15(ip, &dibh);
	if (!error) {
		ip->i_inode.i_ctime = CURRENT_TIME;
		FUNC17(ip->i_gl, dibh);
		FUNC11(ip, dibh->b_data);
		FUNC6(dibh);
	}

	FUNC19(sdp);

out_gunlock:
	FUNC13(&rg_gh);
	return error;
}