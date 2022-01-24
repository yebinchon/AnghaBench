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
typedef  struct gfs2_rbm {TYPE_1__* bi; TYPE_2__* rgd; } const gfs2_rbm ;
struct TYPE_4__ {int /*<<< orphan*/  rd_gl; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_BLKST_DINODE ; 
 scalar_t__ GFS2_BLKST_FREE ; 
 int /*<<< orphan*/  GFS2_BLKST_USED ; 
 int FUNC0 (struct gfs2_rbm const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_rbm const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_rbm const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct gfs2_rbm const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct gfs2_rbm *rbm, bool dinode,
			     unsigned int *n)
{
	struct gfs2_rbm pos = { .rgd = rbm->rgd, };
	const unsigned int elen = *n;
	u64 block;
	int ret;

	*n = 1;
	block = FUNC1(rbm);
	FUNC4(rbm->rgd->rd_gl, rbm->bi->bi_bh);
	FUNC2(rbm, true, dinode ? GFS2_BLKST_DINODE : GFS2_BLKST_USED);
	block++;
	while (*n < elen) {
		ret = FUNC0(&pos, block);
		if (ret || FUNC3(&pos) != GFS2_BLKST_FREE)
			break;
		FUNC4(pos.rgd->rd_gl, pos.bi->bi_bh);
		FUNC2(&pos, true, GFS2_BLKST_USED);
		(*n)++;
		block++;
	}
}