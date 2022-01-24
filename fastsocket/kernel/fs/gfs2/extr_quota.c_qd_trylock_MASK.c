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
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_list; TYPE_2__* sd_vfs; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_flags; int /*<<< orphan*/  qd_change_sync; int /*<<< orphan*/  qd_slot_count; int /*<<< orphan*/  qd_change; int /*<<< orphan*/  qd_count; int /*<<< orphan*/  qd_list; TYPE_1__* qd_gl; } ;
struct TYPE_4__ {int s_flags; } ;
struct TYPE_3__ {struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 int /*<<< orphan*/  QDF_CHANGE ; 
 int /*<<< orphan*/  QDF_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qd_lru_lock ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct gfs2_quota_data *qd)
{
	struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;

	if (sdp->sd_vfs->s_flags & MS_RDONLY)
		return 0;

	FUNC9(&qd_lru_lock);

	if (FUNC11(QDF_LOCKED, &qd->qd_flags) ||
	    !FUNC11(QDF_CHANGE, &qd->qd_flags)) {
		FUNC10(&qd_lru_lock);
		return 0;
	}

	FUNC5(&qd->qd_list, &sdp->sd_quota_list);

	FUNC7(QDF_LOCKED, &qd->qd_flags);
	FUNC4(sdp, FUNC1(&qd->qd_count));
	FUNC0(&qd->qd_count);
	qd->qd_change_sync = qd->qd_change;
	FUNC4(sdp, qd->qd_slot_count);
	qd->qd_slot_count++;

	FUNC10(&qd_lru_lock);

	FUNC4(sdp, qd->qd_change_sync);
	if (FUNC2(qd)) {
		FUNC3(QDF_LOCKED, &qd->qd_flags);
		FUNC8(qd);
		FUNC6(qd);
		return 0;
	}

	return 1;
}