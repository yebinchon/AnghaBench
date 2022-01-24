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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int qd_slot; int /*<<< orphan*/  qd_gl; int /*<<< orphan*/  qd_reclaim; int /*<<< orphan*/  qd_flags; scalar_t__ qd_id; int /*<<< orphan*/  qd_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QDF_USER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct gfs2_sbd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_quota_glops ; 
 int /*<<< orphan*/  gfs2_quotad_cachep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct gfs2_quota_data*) ; 
 struct gfs2_quota_data* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gfs2_sbd *sdp, int user, u32 id,
		    struct gfs2_quota_data **qdp)
{
	struct gfs2_quota_data *qd;
	int error;

	qd = FUNC4(gfs2_quotad_cachep, GFP_NOFS);
	if (!qd)
		return -ENOMEM;

	FUNC1(&qd->qd_count, 1);
	qd->qd_id = id;
	if (user)
		FUNC5(QDF_USER, &qd->qd_flags);
	qd->qd_slot = -1;
	FUNC0(&qd->qd_reclaim);

	error = FUNC2(sdp, 2 * (u64)id + !user,
			      &gfs2_quota_glops, CREATE, &qd->qd_gl);
	if (error)
		goto fail;

	*qdp = qd;

	return 0;

fail:
	FUNC3(gfs2_quotad_cachep, qd);
	return error;
}