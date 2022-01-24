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
struct gfs2_sbd {int /*<<< orphan*/ * debugfs_dir; int /*<<< orphan*/ * debugfs_dentry_sbstats; int /*<<< orphan*/ * debugfs_dentry_glstats; int /*<<< orphan*/ * debugfs_dentry_glocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct gfs2_sbd *sdp)
{
	if (sdp->debugfs_dir) {
		if (sdp->debugfs_dentry_glocks) {
			FUNC0(sdp->debugfs_dentry_glocks);
			sdp->debugfs_dentry_glocks = NULL;
		}
		if (sdp->debugfs_dentry_glstats) {
			FUNC0(sdp->debugfs_dentry_glstats);
			sdp->debugfs_dentry_glstats = NULL;
		}
		if (sdp->debugfs_dentry_sbstats) {
			FUNC0(sdp->debugfs_dentry_sbstats);
			sdp->debugfs_dentry_sbstats = NULL;
		}
		FUNC0(sdp->debugfs_dir);
		sdp->debugfs_dir = NULL;
	}
}