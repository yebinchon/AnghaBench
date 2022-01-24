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
struct gfs2_sbd {int /*<<< orphan*/  sd_glock_wait; int /*<<< orphan*/  sd_glock_disposal; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_rcu; struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_glock_dealloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct gfs2_glock *gl)
{
	struct gfs2_sbd *sdp = gl->gl_sbd;

	FUNC1(&gl->gl_rcu, gfs2_glock_dealloc);
	if (FUNC0(&sdp->sd_glock_disposal))
		FUNC2(&sdp->sd_glock_wait);
}