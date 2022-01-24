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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
struct gfs2_sbd {int dummy; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_dir_fops ; 
 int /*<<< orphan*/  gfs2_dir_fops_nolock ; 
 int /*<<< orphan*/  gfs2_dir_iops ; 
 int /*<<< orphan*/  gfs2_file_fops ; 
 int /*<<< orphan*/  gfs2_file_fops_nolock ; 
 int /*<<< orphan*/  gfs2_file_iops ; 
 scalar_t__ FUNC4 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  gfs2_symlink_iops ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode)
{
	struct gfs2_sbd *sdp = FUNC0(inode);
	umode_t mode = inode->i_mode;

	if (FUNC3(mode)) {
		inode->i_op = &gfs2_file_iops;
		if (FUNC4(sdp))
			inode->i_fop = &gfs2_file_fops_nolock;
		else
			inode->i_fop = &gfs2_file_fops;
	} else if (FUNC1(mode)) {
		inode->i_op = &gfs2_dir_iops;
		if (FUNC4(sdp))
			inode->i_fop = &gfs2_dir_fops_nolock;
		else
			inode->i_fop = &gfs2_dir_fops;
	} else if (FUNC2(mode)) {
		inode->i_op = &gfs2_symlink_iops;
	} else {
		inode->i_op = &gfs2_file_iops;
		FUNC5(inode, inode->i_mode, inode->i_rdev);
	}
}