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
struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct backing_dev_info {scalar_t__ dirty_exceeded; } ;
struct address_space {struct backing_dev_info* backing_dev_info; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 int FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct writeback_control*) ; 
 struct address_space* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct writeback_control *wbc)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct address_space *metamapping = FUNC5(ip->i_gl);
	struct backing_dev_info *bdi = metamapping->backing_dev_info;
	int ret = 0;

	if (wbc->sync_mode == WB_SYNC_ALL)
		FUNC6(FUNC1(inode), ip->i_gl);
	if (bdi->dirty_exceeded)
		FUNC4(sdp, wbc);
	else
		FUNC3(metamapping);
	if (wbc->sync_mode == WB_SYNC_ALL)
		ret = FUNC2(metamapping);
	if (ret)
		FUNC7(inode);
	return ret;
}