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
struct gfs2_sbd {int /*<<< orphan*/  sd_ail_lock; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_ail_count; int /*<<< orphan*/  gl_ail_list; } ;
struct gfs2_bufdata {struct gfs2_glock* bd_gl; int /*<<< orphan*/  bd_ail_st_list; struct gfs2_ail* bd_ail; int /*<<< orphan*/  bd_ail_gl_list; } ;
struct gfs2_ail {int /*<<< orphan*/  ai_ail1_list; } ;
struct buffer_head {struct gfs2_bufdata* b_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_bufdata*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_bufdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC17(struct gfs2_sbd *sdp, struct buffer_head *bh,
		       struct gfs2_ail *ai)
{
	struct gfs2_bufdata *bd = bh->b_private;

	FUNC0(!FUNC5(bh));
	FUNC0(!FUNC4(bh));

	FUNC10(bh);
	FUNC11(bh);
	FUNC7(bh);

	if (FUNC3(bd))
		FUNC12(bd);

	FUNC13(&sdp->sd_ail_lock);
	if (bd->bd_ail) {
		FUNC9(&bd->bd_ail_st_list);
		FUNC2(bh);
	} else {
		struct gfs2_glock *gl = bd->bd_gl;
		FUNC8(&bd->bd_ail_gl_list, &gl->gl_ail_list);
		FUNC1(&gl->gl_ail_count);
	}
	bd->bd_ail = ai;
	FUNC8(&bd->bd_ail_st_list, &ai->ai_ail1_list);
	FUNC14(&sdp->sd_ail_lock);

	FUNC6(GLF_LFLUSH, &bd->bd_gl->gl_flags);
	FUNC15(bd, 0);
	FUNC16(bh);
}