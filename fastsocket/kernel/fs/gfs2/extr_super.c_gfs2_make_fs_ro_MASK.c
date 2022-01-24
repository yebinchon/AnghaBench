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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; int /*<<< orphan*/  sd_trans_gl; int /*<<< orphan*/  sd_vfs; } ;
struct gfs2_holder {scalar_t__ gh_gl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  SDF_JOURNAL_LIVE ; 
 int /*<<< orphan*/  SDF_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_delete_workqueue ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct gfs2_sbd *sdp)
{
	struct gfs2_holder t_gh;
	int error;

	FUNC1(gfs2_delete_workqueue);
	FUNC7(sdp->sd_vfs, 0);
	FUNC8(sdp->sd_vfs, 0);

	error = FUNC3(sdp->sd_trans_gl, LM_ST_SHARED, GL_NOCACHE,
				   &t_gh);
	if (error && !FUNC9(SDF_SHUTDOWN, &sdp->sd_flags))
		return error;

	FUNC5(sdp);
	FUNC4(sdp);

	FUNC0(SDF_JOURNAL_LIVE, &sdp->sd_flags);

	if (t_gh.gh_gl)
		FUNC2(&t_gh);

	FUNC6(sdp);

	return error;
}