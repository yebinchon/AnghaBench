#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_5__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {struct inode* sd_sc_inode; struct inode* sd_qc_inode; int /*<<< orphan*/  sd_sc_gh; int /*<<< orphan*/  sd_qc_gh; TYPE_3__* sd_jdesc; TYPE_2__ sd_args; TYPE_1__* sd_master_dir; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct TYPE_6__ {int jd_jid; } ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct inode*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int FUNC9(struct gfs2_sbd *sdp, int undo)
{
	struct inode *pn = NULL;
	char buf[30];
	int error = 0;
	struct gfs2_inode *ip;
	struct inode *master = sdp->sd_master_dir->d_inode;

	if (sdp->sd_args.ar_spectator)
		return 0;

	if (undo)
		goto fail_qc_gh;

	pn = FUNC6(master, "per_node");
	if (FUNC1(pn)) {
		error = FUNC2(pn);
		FUNC3(sdp, "can't find per_node directory: %d\n", error);
		return error;
	}

	FUNC8(buf, "statfs_change%u", sdp->sd_jdesc->jd_jid);
	sdp->sd_sc_inode = FUNC6(pn, buf);
	if (FUNC1(sdp->sd_sc_inode)) {
		error = FUNC2(sdp->sd_sc_inode);
		FUNC3(sdp, "can't find local \"sc\" file: %d\n", error);
		goto fail;
	}

	FUNC8(buf, "quota_change%u", sdp->sd_jdesc->jd_jid);
	sdp->sd_qc_inode = FUNC6(pn, buf);
	if (FUNC1(sdp->sd_qc_inode)) {
		error = FUNC2(sdp->sd_qc_inode);
		FUNC3(sdp, "can't find local \"qc\" file: %d\n", error);
		goto fail_ut_i;
	}

	FUNC7(pn);
	pn = NULL;

	ip = FUNC0(sdp->sd_sc_inode);
	error = FUNC5(ip->i_gl, LM_ST_EXCLUSIVE, 0,
				   &sdp->sd_sc_gh);
	if (error) {
		FUNC3(sdp, "can't lock local \"sc\" file: %d\n", error);
		goto fail_qc_i;
	}

	ip = FUNC0(sdp->sd_qc_inode);
	error = FUNC5(ip->i_gl, LM_ST_EXCLUSIVE, 0,
				   &sdp->sd_qc_gh);
	if (error) {
		FUNC3(sdp, "can't lock local \"qc\" file: %d\n", error);
		goto fail_ut_gh;
	}

	return 0;

fail_qc_gh:
	FUNC4(&sdp->sd_qc_gh);
fail_ut_gh:
	FUNC4(&sdp->sd_sc_gh);
fail_qc_i:
	FUNC7(sdp->sd_qc_inode);
fail_ut_i:
	FUNC7(sdp->sd_sc_inode);
fail:
	if (pn)
		FUNC7(pn);
	return error;
}