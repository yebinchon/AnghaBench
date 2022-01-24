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
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_slot_count; TYPE_1__* qd_gl; } ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qd_lru_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gfs2_quota_data *qd)
{
	struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;

	FUNC1(&qd_lru_lock);
	FUNC0(sdp, qd->qd_slot_count);
	qd->qd_slot_count++;
	FUNC2(&qd_lru_lock);
}