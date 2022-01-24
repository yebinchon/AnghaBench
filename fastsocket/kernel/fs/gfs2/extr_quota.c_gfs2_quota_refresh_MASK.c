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
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int dummy; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCE ; 
 int FUNC0 (struct gfs2_quota_data*,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_holder*) ; 
 int FUNC2 (struct gfs2_sbd*,int,int /*<<< orphan*/ ,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_quota_data*) ; 

int FUNC4(struct gfs2_sbd *sdp, int user, u32 id)
{
	struct gfs2_quota_data *qd;
	struct gfs2_holder q_gh;
	int error;

	error = FUNC2(sdp, user, id, &qd);
	if (error)
		return error;

	error = FUNC0(qd, FORCE, &q_gh);
	if (!error)
		FUNC1(&q_gh);

	FUNC3(qd);
	return error;
}