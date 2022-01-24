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
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_mutex; } ;
struct gfs2_quota_data {int /*<<< orphan*/ * qd_bh_qc; int /*<<< orphan*/ * qd_bh; int /*<<< orphan*/  qd_bh_count; TYPE_1__* qd_gl; } ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gfs2_quota_data *qd)
{
	struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;

	FUNC2(&sdp->sd_quota_mutex);
	FUNC1(sdp, qd->qd_bh_count);
	if (!--qd->qd_bh_count) {
		FUNC0(qd->qd_bh);
		qd->qd_bh = NULL;
		qd->qd_bh_qc = NULL;
	}
	FUNC3(&sdp->sd_quota_mutex);
}