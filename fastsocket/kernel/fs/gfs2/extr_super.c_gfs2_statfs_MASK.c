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
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct kstatfs {int /*<<< orphan*/  f_namelen; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; int /*<<< orphan*/  f_blocks; int /*<<< orphan*/  f_bsize; int /*<<< orphan*/  f_type; } ;
struct gfs2_statfs_change_host {scalar_t__ sc_free; scalar_t__ sc_dinodes; int /*<<< orphan*/  sc_total; } ;
struct TYPE_4__ {int /*<<< orphan*/  sb_bsize; } ;
struct gfs2_sbd {TYPE_2__ sd_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_FNAMESIZE ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int FUNC0 (struct gfs2_sbd*) ; 
 int FUNC1 (struct gfs2_sbd*,struct gfs2_statfs_change_host*) ; 
 int FUNC2 (struct gfs2_sbd*,struct gfs2_statfs_change_host*) ; 
 scalar_t__ FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt_statfs_slow ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_inode->i_sb;
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_statfs_change_host sc;
	int error;

	error = FUNC0(sdp);
	if (error)
		return error;

	if (FUNC3(sdp, gt_statfs_slow))
		error = FUNC2(sdp, &sc);
	else
		error = FUNC1(sdp, &sc);

	if (error)
		return error;

	buf->f_type = GFS2_MAGIC;
	buf->f_bsize = sdp->sd_sb.sb_bsize;
	buf->f_blocks = sc.sc_total;
	buf->f_bfree = sc.sc_free;
	buf->f_bavail = sc.sc_free;
	buf->f_files = sc.sc_dinodes + sc.sc_free;
	buf->f_ffree = sc.sc_free;
	buf->f_namelen = GFS2_FNAMESIZE;

	return 0;
}