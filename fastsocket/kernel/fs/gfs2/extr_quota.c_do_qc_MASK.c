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
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_mutex; int /*<<< orphan*/  sd_qc_inode; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_flags; scalar_t__ qd_change; int /*<<< orphan*/  qd_id; int /*<<< orphan*/  qd_bh; struct gfs2_quota_change* qd_bh_qc; TYPE_1__* qd_gl; } ;
struct gfs2_quota_change {void* qc_id; void* qc_flags; scalar_t__ qc_change; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_QCF_USER ; 
 int /*<<< orphan*/  QDF_CHANGE ; 
 int /*<<< orphan*/  QDF_USER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  qd_lru_lock ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct gfs2_quota_data *qd, s64 change)
{
	struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;
	struct gfs2_inode *ip = FUNC0(sdp->sd_qc_inode);
	struct gfs2_quota_change *qc = qd->qd_bh_qc;
	s64 x;

	FUNC7(&sdp->sd_quota_mutex);
	FUNC6(ip->i_gl, qd->qd_bh);

	if (!FUNC16(QDF_CHANGE, &qd->qd_flags)) {
		qc->qc_change = 0;
		qc->qc_flags = 0;
		if (FUNC16(QDF_USER, &qd->qd_flags))
			qc->qc_flags = FUNC3(GFS2_QCF_USER);
		qc->qc_id = FUNC3(qd->qd_id);
	}

	x = FUNC1(qc->qc_change) + change;
	qc->qc_change = FUNC4(x);

	FUNC13(&qd_lru_lock);
	qd->qd_change = x;
	FUNC14(&qd_lru_lock);

	if (!x) {
		FUNC5(sdp, FUNC16(QDF_CHANGE, &qd->qd_flags));
		FUNC2(QDF_CHANGE, &qd->qd_flags);
		qc->qc_flags = 0;
		qc->qc_id = 0;
		FUNC12(qd);
		FUNC10(qd);
	} else if (!FUNC15(QDF_CHANGE, &qd->qd_flags)) {
		FUNC9(qd);
		FUNC11(qd);
	}

	FUNC8(&sdp->sd_quota_mutex);
}