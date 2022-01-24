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
struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_background; scalar_t__ nonblocking; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_LAYOUTCOMMIT ; 
 scalar_t__ WB_SYNC_NONE ; 
 int FUNC1 (struct inode*,struct writeback_control*) ; 
 int FUNC2 (struct inode*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *inode, struct writeback_control *wbc)
{
	int ret;

	ret = FUNC1(inode, wbc);
	if (ret >= 0 && FUNC3(NFS_INO_LAYOUTCOMMIT, &FUNC0(inode)->flags)) {
		int status;
		bool sync = true;

		if (wbc->sync_mode == WB_SYNC_NONE || wbc->nonblocking ||
		    wbc->for_background)
			sync = false;

		status = FUNC2(inode, sync);
		if (status < 0)
			return status;
	}
	return ret;
}