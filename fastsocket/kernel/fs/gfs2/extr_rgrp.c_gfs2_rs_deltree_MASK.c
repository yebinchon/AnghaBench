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
struct gfs2_rgrpd {int /*<<< orphan*/  rd_rsspin; } ;
struct TYPE_2__ {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {TYPE_1__ rs_rbm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_blkreserv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct gfs2_blkreserv *rs)
{
	struct gfs2_rgrpd *rgd;

	rgd = rs->rs_rbm.rgd;
	if (rgd) {
		FUNC1(&rgd->rd_rsspin);
		FUNC0(rs);
		FUNC2(&rgd->rd_rsspin);
	}
}