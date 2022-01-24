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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int EIO ; 
 int PF_MEMALLOC ; 
 scalar_t__ WB_SYNC_ALL ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

int FUNC4(struct inode *inode, struct writeback_control *wbc)
{
	if (current->flags & PF_MEMALLOC)
		return 0;

	if (FUNC2()) {
		FUNC3(1, "called recursively, non-PF_MEMALLOC!\n");
		FUNC0();
		return -EIO;
	}

	if (wbc->sync_mode != WB_SYNC_ALL)
		return 0;

	return FUNC1(inode->i_sb);
}