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
struct gfs2_trans {int tr_touched; int /*<<< orphan*/  tr_num_databuf_new; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_log_le_databuf; int /*<<< orphan*/  sd_log_num_databuf; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; struct gfs2_sbd* gl_sbd; } ;
struct gfs2_bufdata {int /*<<< orphan*/  bd_list; int /*<<< orphan*/  bd_bh; struct gfs2_glock* bd_gl; } ;
struct buffer_head {struct gfs2_bufdata* b_private; TYPE_1__* b_page; } ;
struct address_space {int /*<<< orphan*/  host; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;
struct TYPE_3__ {struct address_space* mapping; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 TYPE_2__* current ; 
 struct gfs2_bufdata* FUNC1 (struct gfs2_glock*,struct buffer_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  gfs2_databuf_lops ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 

void FUNC13(struct gfs2_glock *gl, struct buffer_head *bh)
{
	struct gfs2_trans *tr = current->journal_info;
	struct gfs2_sbd *sdp = gl->gl_sbd;
	struct address_space *mapping = bh->b_page->mapping;
	struct gfs2_inode *ip = FUNC0(mapping->host);
	struct gfs2_bufdata *bd;

	if (!FUNC3(ip)) {
		FUNC6(ip);
		return;
	}

	FUNC10(bh);
	FUNC4(sdp);
	bd = bh->b_private;
	if (bd == NULL) {
		FUNC5(sdp);
		FUNC12(bh);
		if (bh->b_private == NULL)
			bd = FUNC1(gl, bh, &gfs2_databuf_lops);
		FUNC10(bh);
		FUNC4(sdp);
	}
	FUNC2(sdp, bd->bd_gl == gl);
	tr->tr_touched = 1;
	if (FUNC9(&bd->bd_list)) {
		FUNC11(GLF_LFLUSH, &bd->bd_gl->gl_flags);
		FUNC11(GLF_DIRTY, &bd->bd_gl->gl_flags);
		FUNC7(sdp, bd->bd_bh);
		tr->tr_num_databuf_new++;
		sdp->sd_log_num_databuf++;
		FUNC8(&bd->bd_list, &sdp->sd_log_le_databuf);
	}
	FUNC5(sdp);
	FUNC12(bh);
}