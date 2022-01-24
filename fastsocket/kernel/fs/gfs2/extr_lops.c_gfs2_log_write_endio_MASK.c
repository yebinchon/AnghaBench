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
struct gfs2_sbd {int /*<<< orphan*/  sd_log_flush_wait; int /*<<< orphan*/  sd_log_in_flight; } ;
struct buffer_head {struct gfs2_sbd* b_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct buffer_head *bh, int uptodate)
{
	struct gfs2_sbd *sdp = bh->b_private;
	bh->b_private = NULL;

	FUNC1(bh, uptodate);
	if (FUNC0(&sdp->sd_log_in_flight))
		FUNC2(&sdp->sd_log_flush_wait);
}