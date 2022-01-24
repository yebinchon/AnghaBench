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
struct gfs2_bufdata {int /*<<< orphan*/  bd_list; } ;
struct buffer_head {int /*<<< orphan*/ * b_bdev; struct gfs2_bufdata* b_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC12(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
	struct gfs2_bufdata *bd;

	FUNC10(bh);
	FUNC5(sdp);
	FUNC1(bh);
	bd = bh->b_private;
	if (bd) {
		if (!FUNC9(&bd->bd_list) && !FUNC0(bh))
			FUNC8(&bd->bd_list);
		else
			FUNC7(bh, current->journal_info, 0);
	}
	bh->b_bdev = NULL;
	FUNC2(bh);
	FUNC4(bh);
	FUNC3(bh);
	FUNC6(sdp);
	FUNC11(bh);
}