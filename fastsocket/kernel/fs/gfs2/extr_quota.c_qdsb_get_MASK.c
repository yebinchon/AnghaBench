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

/* Variables and functions */
 int FUNC0 (struct gfs2_quota_data*) ; 
 int FUNC1 (struct gfs2_sbd*,int,int /*<<< orphan*/ ,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_quota_data*) ; 
 int FUNC3 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_quota_data*) ; 

__attribute__((used)) static int FUNC5(struct gfs2_sbd *sdp, int user, u32 id,
		    struct gfs2_quota_data **qdp)
{
	int error;

	error = FUNC1(sdp, user, id, qdp);
	if (error)
		return error;

	error = FUNC3(*qdp);
	if (error)
		goto fail;

	error = FUNC0(*qdp);
	if (error)
		goto fail_slot;

	return 0;

fail_slot:
	FUNC4(*qdp);
fail:
	FUNC2(*qdp);
	return error;
}