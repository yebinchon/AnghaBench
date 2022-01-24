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
typedef  scalar_t__ u64 ;
struct gfs2_sbd {int /*<<< orphan*/  sd_replayed_blocks; int /*<<< orphan*/  sd_found_blocks; } ;
struct gfs2_log_descriptor {int /*<<< orphan*/  ld_type; int /*<<< orphan*/  ld_data1; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int GFS2_LOG_DESC_JDATA ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC6 (struct gfs2_glock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,unsigned int*) ; 
 int FUNC8 (struct gfs2_jdesc*,unsigned int,struct buffer_head**) ; 
 scalar_t__ FUNC9 (struct gfs2_sbd*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct gfs2_jdesc *jd, unsigned int start,
				    struct gfs2_log_descriptor *ld,
				    __be64 *ptr, int pass)
{
	struct gfs2_inode *ip = FUNC0(jd->jd_inode);
	struct gfs2_sbd *sdp = FUNC1(jd->jd_inode);
	struct gfs2_glock *gl = ip->i_gl;
	unsigned int blks = FUNC2(ld->ld_data1);
	struct buffer_head *bh_log, *bh_ip;
	u64 blkno;
	u64 esc;
	int error = 0;

	if (pass != 1 || FUNC2(ld->ld_type) != GFS2_LOG_DESC_JDATA)
		return 0;

	FUNC7(sdp, &start);
	for (; blks; FUNC7(sdp, &start), blks--) {
		blkno = FUNC3(*ptr++);
		esc = FUNC3(*ptr++);

		sdp->sd_found_blocks++;

		if (FUNC9(sdp, blkno, start))
			continue;

		error = FUNC8(jd, start, &bh_log);
		if (error)
			return error;

		bh_ip = FUNC6(gl, blkno);
		FUNC11(bh_ip->b_data, bh_log->b_data, bh_log->b_size);

		/* Unescape */
		if (esc) {
			__be32 *eptr = (__be32 *)bh_ip->b_data;
			*eptr = FUNC5(GFS2_MAGIC);
		}
		FUNC10(bh_ip);

		FUNC4(bh_log);
		FUNC4(bh_ip);

		sdp->sd_replayed_blocks++;
	}

	return error;
}