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
struct gfs2_sbd {int dummy; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct gfs2_bufdata {struct gfs2_glock* bd_gl; } ;
struct buffer_head {int /*<<< orphan*/  b_page; struct gfs2_bufdata* b_private; } ;

/* Variables and functions */
 struct gfs2_bufdata* FUNC0 (struct gfs2_glock*,struct buffer_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  gfs2_buf_lops ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct gfs2_glock *gl, struct buffer_head *bh)
{

	struct gfs2_sbd *sdp = gl->gl_sbd;
	struct gfs2_bufdata *bd;

	FUNC4(bh);
	FUNC2(sdp);
	bd = bh->b_private;
	if (bd == NULL) {
		FUNC3(sdp);
		FUNC7(bh);
		FUNC5(bh->b_page);
		if (bh->b_private == NULL)
			bd = FUNC0(gl, bh, &gfs2_buf_lops);
		FUNC8(bh->b_page);
		FUNC4(bh);
		FUNC2(sdp);
	}
	FUNC1(sdp, bd->bd_gl == gl);
	FUNC6(sdp, bd);
	FUNC3(sdp);
	FUNC7(bh);
}