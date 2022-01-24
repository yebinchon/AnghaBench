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
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct address_space*,struct writeback_control*) ; 

__attribute__((used)) static int FUNC4(struct address_space *mapping,
				 struct writeback_control *wbc)
{
	struct gfs2_inode *ip = FUNC0(mapping->host);
	struct gfs2_sbd *sdp = FUNC1(mapping->host);
	int ret;

	ret = FUNC3(mapping, wbc);
	if (ret == 0 && wbc->sync_mode == WB_SYNC_ALL) {
		FUNC2(sdp, ip->i_gl);
		ret = FUNC3(mapping, wbc);
	}
	return ret;
}