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
struct writeback_control {scalar_t__ sync_mode; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ WB_SYNC_ALL ; 
 int FUNC2 (struct page*,struct writeback_control*) ; 
 int FUNC3 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*) ; 
 int FUNC5 (struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct gfs2_sbd *sdp = FUNC0(inode);
	int ret;
	int done_trans = 0;

	if (FUNC1(page)) {
		if (wbc->sync_mode != WB_SYNC_ALL)
			goto out_ignore;
		ret = FUNC3(sdp, RES_DINODE + 1, 0);
		if (ret)
			goto out_ignore;
		done_trans = 1;
	}
	ret = FUNC5(page, wbc);
	if (ret > 0)
		ret = FUNC2(page, wbc);
	if (done_trans)
		FUNC4(sdp);
	return ret;

out_ignore:
	FUNC6(wbc, page);
	FUNC7(page);
	return 0;
}