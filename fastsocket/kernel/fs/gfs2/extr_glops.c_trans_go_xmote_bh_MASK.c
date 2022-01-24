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
struct gfs2_sbd {scalar_t__ sd_log_sequence; int /*<<< orphan*/  sd_flags; TYPE_2__* sd_jdesc; } ;
struct gfs2_log_header_host {int lh_flags; int /*<<< orphan*/  lh_blkno; scalar_t__ lh_sequence; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {TYPE_1__* gl_ops; struct gfs2_sbd* gl_sbd; } ;
struct TYPE_4__ {int /*<<< orphan*/  jd_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* go_inval ) (struct gfs2_glock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_METADATA ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFS2_LOG_HEAD_UNMOUNT ; 
 int /*<<< orphan*/  SDF_JOURNAL_LIVE ; 
 int /*<<< orphan*/  SDF_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*) ; 
 int FUNC2 (TYPE_2__*,struct gfs2_log_header_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_glock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gfs2_glock *gl, struct gfs2_holder *gh)
{
	struct gfs2_sbd *sdp = gl->gl_sbd;
	struct gfs2_inode *ip = FUNC0(sdp->sd_jdesc->jd_inode);
	struct gfs2_glock *j_gl = ip->i_gl;
	struct gfs2_log_header_host head;
	int error;

	if (FUNC5(SDF_JOURNAL_LIVE, &sdp->sd_flags)) {
		j_gl->gl_ops->go_inval(j_gl, DIO_METADATA);

		error = FUNC2(sdp->sd_jdesc, &head);
		if (error)
			FUNC1(sdp);
		if (!(head.lh_flags & GFS2_LOG_HEAD_UNMOUNT))
			FUNC1(sdp);

		/*  Initialize some head of the log stuff  */
		if (!FUNC5(SDF_SHUTDOWN, &sdp->sd_flags)) {
			sdp->sd_log_sequence = head.lh_sequence + 1;
			FUNC3(sdp, head.lh_blkno);
		}
	}
	return 0;
}