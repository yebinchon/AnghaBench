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
struct gfs2_sbd {int /*<<< orphan*/  sd_log_flush_wait; int /*<<< orphan*/  sd_log_in_flight; } ;
struct gfs2_bufdata {TYPE_1__* bd_gl; struct gfs2_bufdata* b_private; } ;
struct buffer_head {TYPE_1__* bd_gl; struct buffer_head* b_private; } ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_bufdata*,int) ; 
 int /*<<< orphan*/  gfs2_bh_pool ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_bufdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct buffer_head *bh, int uptodate)
{
	struct buffer_head *real_bh = bh->b_private;
	struct gfs2_bufdata *bd = real_bh->b_private;
	struct gfs2_sbd *sdp = bd->bd_gl->gl_sbd;

	FUNC2(bh, uptodate);
	FUNC3(bh, gfs2_bh_pool);
	FUNC4(real_bh);
	FUNC1(real_bh);
	if (FUNC0(&sdp->sd_log_in_flight))
		FUNC5(&sdp->sd_log_flush_wait);
}