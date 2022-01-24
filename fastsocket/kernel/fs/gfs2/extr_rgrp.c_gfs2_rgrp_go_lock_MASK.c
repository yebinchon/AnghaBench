#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {unsigned int rd_length; int rd_flags; struct gfs2_bitmap* rd_bits; int /*<<< orphan*/  rd_free; int /*<<< orphan*/  rd_extfail_pt; int /*<<< orphan*/  rd_free_clone; scalar_t__ rd_addr; struct gfs2_glock* rd_gl; struct gfs2_sbd* rd_sbd; } ;
struct gfs2_holder {TYPE_1__* gh_gl; } ;
struct gfs2_glock {int dummy; } ;
struct gfs2_bitmap {int /*<<< orphan*/  bi_clone; TYPE_2__* bi_bh; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_6__ {struct gfs2_rgrpd* gl_object; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GBF_FULL ; 
 int /*<<< orphan*/  GFS2_METATYPE_RB ; 
 int /*<<< orphan*/  GFS2_METATYPE_RG ; 
 int GFS2_RDF_CHECK ; 
 int GFS2_RDF_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int) ; 
 int FUNC3 (struct gfs2_glock*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int FUNC4 (struct gfs2_sbd*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (struct gfs2_sbd*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 

int FUNC7(struct gfs2_holder *gh)
{
	struct gfs2_rgrpd *rgd = gh->gh_gl->gl_object;
	struct gfs2_sbd *sdp = rgd->rd_sbd;
	struct gfs2_glock *gl = rgd->rd_gl;
	unsigned int length = rgd->rd_length;
	struct gfs2_bitmap *bi;
	unsigned int x, y;
	int error;

	for (x = 0; x < length; x++) {
		bi = rgd->rd_bits + x;
		error = FUNC3(gl, rgd->rd_addr + x, 0, &bi->bi_bh);
		if (error)
			goto fail;
	}

	for (y = length; y--;) {
		bi = rgd->rd_bits + y;
		error = FUNC4(sdp, bi->bi_bh);
		if (error)
			goto fail;
		if (FUNC5(sdp, bi->bi_bh, y ? GFS2_METATYPE_RB :
					      GFS2_METATYPE_RG)) {
			error = -EIO;
			goto fail;
		}
	}

	if (!(rgd->rd_flags & GFS2_RDF_UPTODATE)) {
		for (x = 0; x < length; x++)
			FUNC1(GBF_FULL, &rgd->rd_bits[x].bi_flags);
		FUNC6(rgd, (rgd->rd_bits[0].bi_bh)->b_data);
		rgd->rd_flags |= (GFS2_RDF_UPTODATE | GFS2_RDF_CHECK);
		rgd->rd_free_clone = rgd->rd_free;
		/* max out the rgrp allocation failure point */
		rgd->rd_extfail_pt = rgd->rd_free;
	}

	return 0;

fail:
	while (x--) {
		bi = rgd->rd_bits + x;
		FUNC0(bi->bi_bh);
		bi->bi_bh = NULL;
		FUNC2(sdp, !bi->bi_clone);
	}

	return error;
}