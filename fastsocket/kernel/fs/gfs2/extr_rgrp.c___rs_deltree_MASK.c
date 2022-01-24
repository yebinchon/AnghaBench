#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gfs2_rgrpd {scalar_t__ rd_reserved; int /*<<< orphan*/  rd_extfail_pt; int /*<<< orphan*/  rd_rstree; } ;
struct TYPE_4__ {TYPE_1__* bi; struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {scalar_t__ rs_free; TYPE_2__ rs_rbm; int /*<<< orphan*/  rs_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GBF_FULL ; 
 int /*<<< orphan*/  TRACE_RS_TREEDEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_blkreserv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_blkreserv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gfs2_blkreserv *rs)
{
	struct gfs2_rgrpd *rgd;

	if (!FUNC2(rs))
		return;

	rgd = rs->rs_rbm.rgd;
	FUNC6(rs, TRACE_RS_TREEDEL);
	FUNC3(&rs->rs_node, &rgd->rd_rstree);
	FUNC4(&rs->rs_node);

	if (rs->rs_free) {
		/* return reserved blocks to the rgrp and the ip */
		FUNC0(rs->rs_rbm.rgd->rd_reserved < rs->rs_free);
		rs->rs_rbm.rgd->rd_reserved -= rs->rs_free;
		/* The rgrp extent failure point is likely not to increase;
		   it will only do so if the freed blocks are somehow
		   contiguous with a span of free blocks that follows. Still,
		   it will force the number to be recalculated later. */
		rgd->rd_extfail_pt += rs->rs_free;
		rs->rs_free = 0;
		FUNC1(GBF_FULL, &rs->rs_rbm.bi->bi_flags);
		FUNC5();
	}
}