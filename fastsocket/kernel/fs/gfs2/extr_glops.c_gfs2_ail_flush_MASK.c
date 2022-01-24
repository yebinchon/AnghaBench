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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_log_descriptor {int dummy; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_ail_count; struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*,int,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*) ; 

void FUNC5(struct gfs2_glock *gl, bool fsync)
{
	struct gfs2_sbd *sdp = gl->gl_sbd;
	unsigned int revokes = FUNC1(&gl->gl_ail_count);
	unsigned int max_revokes = (sdp->sd_sb.sb_bsize - sizeof(struct gfs2_log_descriptor)) / sizeof(u64);
	int ret;

	if (!revokes)
		return;

	while (revokes > max_revokes)
		max_revokes += (sdp->sd_sb.sb_bsize - sizeof(struct gfs2_meta_header)) / sizeof(u64);

	ret = FUNC3(sdp, 0, max_revokes);
	if (ret)
		return;
	FUNC0(gl, fsync, max_revokes);
	FUNC4(sdp);
	FUNC2(sdp, NULL);
}