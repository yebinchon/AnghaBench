#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  rl; } ;
struct TYPE_6__ {TYPE_1__ runlist; } ;
typedef  TYPE_2__ ntfs_inode ;
typedef  int /*<<< orphan*/  VCN ;

/* Variables and functions */
 scalar_t__ LCN_RL_NOT_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(ntfs_inode *ni, VCN vcn)
{
	int err = 0;

	FUNC0(&ni->runlist.lock);
	/* Make sure someone else didn't do the work while we were sleeping. */
	if (FUNC1(FUNC3(ni->runlist.rl, vcn) <=
			LCN_RL_NOT_MAPPED))
		err = FUNC2(ni, vcn, NULL);
	FUNC4(&ni->runlist.lock);
	return err;
}