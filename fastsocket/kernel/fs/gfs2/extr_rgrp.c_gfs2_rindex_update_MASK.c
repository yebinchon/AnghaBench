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
struct gfs2_sbd {int /*<<< orphan*/  sd_rindex_uptodate; int /*<<< orphan*/  sd_rindex; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {int dummy; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_glock*) ; 
 int FUNC3 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC4 (struct gfs2_inode*) ; 

int FUNC5(struct gfs2_sbd *sdp)
{
	struct gfs2_inode *ip = FUNC0(sdp->sd_rindex);
	struct gfs2_glock *gl = ip->i_gl;
	struct gfs2_holder ri_gh;
	int error = 0;
	int unlock_required = 0;

	/* Read new copy from disk if we don't have the latest */
	if (!sdp->sd_rindex_uptodate) {
		if (!FUNC2(gl)) {
			error = FUNC3(gl, LM_ST_SHARED, 0, &ri_gh);
			if (error)
				return error;
			unlock_required = 1;
		}
		if (!sdp->sd_rindex_uptodate)
			error = FUNC4(ip);
		if (unlock_required)
			FUNC1(&ri_gh);
	}

	return error;
}