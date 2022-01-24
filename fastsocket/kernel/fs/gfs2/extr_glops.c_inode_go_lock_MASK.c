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
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_wait; int /*<<< orphan*/  sd_trunc_lock; int /*<<< orphan*/  sd_trunc_list; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_trunc_list; int /*<<< orphan*/  i_flags; } ;
struct gfs2_holder {int gh_flags; scalar_t__ gh_state; struct gfs2_glock* gh_gl; } ;
struct gfs2_glock {scalar_t__ gl_state; struct gfs2_inode* gl_object; struct gfs2_sbd* gl_sbd; } ;

/* Variables and functions */
 int GFS2_DIF_TRUNC_IN_PROG ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 int GL_SKIP ; 
 scalar_t__ LM_ST_EXCLUSIVE ; 
 int FUNC0 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct gfs2_holder *gh)
{
	struct gfs2_glock *gl = gh->gh_gl;
	struct gfs2_sbd *sdp = gl->gl_sbd;
	struct gfs2_inode *ip = gl->gl_object;
	int error = 0;

	if (!ip || (gh->gh_flags & GL_SKIP))
		return 0;

	if (FUNC5(GIF_INVALID, &ip->i_flags)) {
		error = FUNC0(ip);
		if (error)
			return error;
	}

	if ((ip->i_diskflags & GFS2_DIF_TRUNC_IN_PROG) &&
	    (gl->gl_state == LM_ST_EXCLUSIVE) &&
	    (gh->gh_state == LM_ST_EXCLUSIVE)) {
		FUNC3(&sdp->sd_trunc_lock);
		if (FUNC2(&ip->i_trunc_list))
			FUNC1(&sdp->sd_trunc_list, &ip->i_trunc_list);
		FUNC4(&sdp->sd_trunc_lock);
		FUNC6(&sdp->sd_quota_wait);
		return 1;
	}

	return error;
}