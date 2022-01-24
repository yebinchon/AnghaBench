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
struct writeback_control {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,struct writeback_control*) ; 

int FUNC3(struct inode *inode, struct writeback_control *wbc)
{
	int ret;

	FUNC0(&inode_lock);
	ret = FUNC2(inode, wbc);
	FUNC1(&inode_lock);
	return ret;
}