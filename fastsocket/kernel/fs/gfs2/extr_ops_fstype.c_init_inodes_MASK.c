#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct gfs2_sbd {void* sd_statfs_inode; void* sd_rindex; void* sd_quota_inode; scalar_t__ sd_rindex_uptodate; TYPE_1__* sd_master_dir; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int UNDO ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 
 void* FUNC4 (struct inode*,char*) ; 
 int FUNC5 (struct gfs2_sbd*) ; 
 int FUNC6 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct gfs2_sbd *sdp, int undo)
{
	int error = 0;
	struct inode *master = sdp->sd_master_dir->d_inode;

	if (undo)
		goto fail_qinode;

	error = FUNC6(sdp, undo);
	if (error)
		goto fail;

	/* Read in the master statfs inode */
	sdp->sd_statfs_inode = FUNC4(master, "statfs");
	if (FUNC0(sdp->sd_statfs_inode)) {
		error = FUNC1(sdp->sd_statfs_inode);
		FUNC2(sdp, "can't read in statfs inode: %d\n", error);
		goto fail_journal;
	}

	/* Read in the resource index inode */
	sdp->sd_rindex = FUNC4(master, "rindex");
	if (FUNC0(sdp->sd_rindex)) {
		error = FUNC1(sdp->sd_rindex);
		FUNC2(sdp, "can't get resource index inode: %d\n", error);
		goto fail_statfs;
	}
	sdp->sd_rindex_uptodate = 0;

	/* Read in the quota inode */
	sdp->sd_quota_inode = FUNC4(master, "quota");
	if (FUNC0(sdp->sd_quota_inode)) {
		error = FUNC1(sdp->sd_quota_inode);
		FUNC2(sdp, "can't get quota file inode: %d\n", error);
		goto fail_rindex;
	}

	error = FUNC5(sdp);
	if (error)
		goto fail_qinode;

	return 0;

fail_qinode:
	FUNC7(sdp->sd_quota_inode);
fail_rindex:
	FUNC3(sdp);
	FUNC7(sdp->sd_rindex);
fail_statfs:
	FUNC7(sdp->sd_statfs_inode);
fail_journal:
	FUNC6(sdp, UNDO);
fail:
	return error;
}