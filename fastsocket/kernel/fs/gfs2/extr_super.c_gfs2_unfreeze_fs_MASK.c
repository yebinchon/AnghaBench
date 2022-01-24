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
struct gfs2_sbd {int /*<<< orphan*/  sd_freeze_lock; int /*<<< orphan*/  sd_freeze_gh; scalar_t__ sd_freeze_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct gfs2_sbd *sdp)
{
	FUNC1(&sdp->sd_freeze_lock);

	if (sdp->sd_freeze_count && !--sdp->sd_freeze_count)
		FUNC0(&sdp->sd_freeze_gh);

	FUNC2(&sdp->sd_freeze_lock);
}