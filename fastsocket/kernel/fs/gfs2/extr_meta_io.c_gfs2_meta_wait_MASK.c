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
struct gfs2_trans {scalar_t__ tr_touched; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SDF_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

int FUNC5(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
	if (FUNC3(FUNC2(SDF_SHUTDOWN, &sdp->sd_flags)))
		return -EIO;

	FUNC4(bh);

	if (!FUNC0(bh)) {
		struct gfs2_trans *tr = current->journal_info;
		if (tr && tr->tr_touched)
			FUNC1(sdp, bh);
		return -EIO;
	}
	if (FUNC3(FUNC2(SDF_SHUTDOWN, &sdp->sd_flags)))
		return -EIO;

	return 0;
}