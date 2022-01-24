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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct gfs2_glock {scalar_t__ gl_state; struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 scalar_t__ LM_ST_UNLOCKED ; 
 int /*<<< orphan*/  SDF_JOURNAL_LIVE ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gfs2_glock *gl)
{
	struct gfs2_sbd *sdp = gl->gl_sbd;

	if (gl->gl_state != LM_ST_UNLOCKED &&
	    FUNC2(SDF_JOURNAL_LIVE, &sdp->sd_flags)) {
		FUNC1(sdp);
		FUNC0(sdp);
	}
}