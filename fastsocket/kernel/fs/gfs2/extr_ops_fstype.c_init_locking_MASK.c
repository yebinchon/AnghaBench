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
struct gfs2_holder {int dummy; } ;
struct gfs2_sbd {struct gfs2_holder sd_live_gh; int /*<<< orphan*/  sd_rename_gl; int /*<<< orphan*/  sd_trans_gl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int /*<<< orphan*/  GFS2_LIVE_LOCK ; 
 int /*<<< orphan*/  GFS2_MOUNT_LOCK ; 
 int /*<<< orphan*/  GFS2_RENAME_LOCK ; 
 int /*<<< orphan*/  GFS2_TRANS_LOCK ; 
 int GL_EXACT ; 
 int GL_NOCACHE ; 
 int LM_FLAG_NOEXP ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 int FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_nondisk_glops ; 
 int /*<<< orphan*/  gfs2_trans_glops ; 

__attribute__((used)) static int FUNC5(struct gfs2_sbd *sdp, struct gfs2_holder *mount_gh,
			int undo)
{
	int error = 0;

	if (undo)
		goto fail_trans;

	error = FUNC3(sdp,
				  GFS2_MOUNT_LOCK, &gfs2_nondisk_glops,
				  LM_ST_EXCLUSIVE, LM_FLAG_NOEXP | GL_NOCACHE,
				  mount_gh);
	if (error) {
		FUNC0(sdp, "can't acquire mount glock: %d\n", error);
		goto fail;
	}

	error = FUNC3(sdp,
				  GFS2_LIVE_LOCK, &gfs2_nondisk_glops,
				  LM_ST_SHARED,
				  LM_FLAG_NOEXP | GL_EXACT,
				  &sdp->sd_live_gh);
	if (error) {
		FUNC0(sdp, "can't acquire live glock: %d\n", error);
		goto fail_mount;
	}

	error = FUNC2(sdp, GFS2_RENAME_LOCK, &gfs2_nondisk_glops,
			       CREATE, &sdp->sd_rename_gl);
	if (error) {
		FUNC0(sdp, "can't create rename glock: %d\n", error);
		goto fail_live;
	}

	error = FUNC2(sdp, GFS2_TRANS_LOCK, &gfs2_trans_glops,
			       CREATE, &sdp->sd_trans_gl);
	if (error) {
		FUNC0(sdp, "can't create transaction glock: %d\n", error);
		goto fail_rename;
	}

	return 0;

fail_trans:
	FUNC4(sdp->sd_trans_gl);
fail_rename:
	FUNC4(sdp->sd_rename_gl);
fail_live:
	FUNC1(&sdp->sd_live_gh);
fail_mount:
	FUNC1(mount_gh);
fail:
	return error;
}