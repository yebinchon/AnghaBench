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
struct gfs2_log_header_host {int lh_flags; } ;
struct gfs2_jdesc {int /*<<< orphan*/  jd_jid; int /*<<< orphan*/  jd_inode; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFS2_LOG_HEAD_UNMOUNT ; 
 int GL_EXACT ; 
 int GL_NOCACHE ; 
 int LM_FLAG_NOEXP ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,...) ; 
 int FUNC2 (struct gfs2_jdesc*,struct gfs2_log_header_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int FUNC5 (struct gfs2_jdesc*) ; 

__attribute__((used)) static int FUNC6(struct gfs2_sbd *sdp, struct gfs2_jdesc *jd)
{
	int error;
	struct gfs2_holder j_gh;
	struct gfs2_log_header_host head;
	struct gfs2_inode *ip;

	ip = FUNC0(jd->jd_inode);
	error = FUNC4(ip->i_gl, LM_ST_SHARED, LM_FLAG_NOEXP |
				   GL_EXACT | GL_NOCACHE, &j_gh);
	if (error) {
		FUNC1(sdp, "Error locking journal for spectator mount.\n");
		return -EPERM;
	}
	error = FUNC5(jd);
	if (error) {
		FUNC1(sdp, "Error checking journal for spectator mount.\n");
		goto out_unlock;
	}
	error = FUNC2(jd, &head);
	if (error) {
		FUNC1(sdp, "Error parsing journal for spectator mount.\n");
		goto out_unlock;
	}
	if (!(head.lh_flags & GFS2_LOG_HEAD_UNMOUNT)) {
		error = -EPERM;
		FUNC1(sdp, "jid=%u: Journal is dirty, so the first mounter "
		       "must not be a spectator.\n", jd->jd_jid);
	}

out_unlock:
	FUNC3(&j_gh);
	return error;
}