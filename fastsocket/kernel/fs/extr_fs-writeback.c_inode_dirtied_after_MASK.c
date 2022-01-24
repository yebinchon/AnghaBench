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
struct inode {int /*<<< orphan*/  dirtied_when; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct inode *inode, unsigned long t)
{
	bool ret = FUNC0(inode->dirtied_when, t);
#ifndef CONFIG_64BIT
	/*
	 * For inodes being constantly redirtied, dirtied_when can get stuck.
	 * It _appears_ to be in the future, but is actually in distant past.
	 * This test is necessary to prevent such wrapped-around relative times
	 * from permanently stopping the whole bdi writeback.
	 */
	ret = ret && FUNC1(inode->dirtied_when, jiffies);
#endif
	return ret;
}