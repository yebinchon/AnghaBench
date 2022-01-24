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
typedef  int /*<<< orphan*/  u64 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_1__* rd_bits; int /*<<< orphan*/  rd_gl; int /*<<< orphan*/  rd_free; int /*<<< orphan*/  rd_dinodes; struct gfs2_sbd* rd_sbd; } ;
struct TYPE_4__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_3__ {TYPE_2__* bi_bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_BLKST_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct gfs2_rgrpd* FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gfs2_rgrpd *rgd, u64 blkno)
{
	struct gfs2_sbd *sdp = rgd->rd_sbd;
	struct gfs2_rgrpd *tmp_rgd;

	tmp_rgd = FUNC5(sdp, blkno, 1, GFS2_BLKST_FREE);
	if (!tmp_rgd)
		return;
	FUNC0(sdp, rgd == tmp_rgd);

	if (!rgd->rd_dinodes)
		FUNC1(rgd);
	rgd->rd_dinodes--;
	rgd->rd_free++;

	FUNC4(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
	FUNC2(rgd, rgd->rd_bits[0].bi_bh->b_data);

	FUNC3(sdp, 0, +1, -1);
}