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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; TYPE_1__* bi; } ;
struct TYPE_4__ {scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;
struct TYPE_3__ {TYPE_2__* bi_bh; int /*<<< orphan*/  bi_len; scalar_t__ bi_offset; scalar_t__ bi_clone; } ;

/* Variables and functions */
 int GFP_NOFS ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,char*,unsigned long long) ; 
 struct gfs2_rgrpd* FUNC1 (struct gfs2_sbd*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_rbm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rbm*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gfs2_rgrpd *FUNC8(struct gfs2_sbd *sdp, u64 bstart,
				     u32 blen, unsigned char new_state)
{
	struct gfs2_rbm rbm;

	rbm.rgd = FUNC1(sdp, bstart, 1);
	if (!rbm.rgd) {
		if (FUNC2(sdp))
			FUNC0(sdp, "block = %llu\n", (unsigned long long)bstart);
		return NULL;
	}

	while (blen--) {
		FUNC3(&rbm, bstart);
		bstart++;
		if (!rbm.bi->bi_clone) {
			rbm.bi->bi_clone = FUNC6(rbm.bi->bi_bh->b_size,
						   GFP_NOFS | __GFP_NOFAIL);
			FUNC7(rbm.bi->bi_clone + rbm.bi->bi_offset,
			       rbm.bi->bi_bh->b_data + rbm.bi->bi_offset,
			       rbm.bi->bi_len);
		}
		FUNC5(rbm.rgd->rd_gl, rbm.bi->bi_bh);
		FUNC4(&rbm, false, new_state);
	}

	return rbm.rgd;
}