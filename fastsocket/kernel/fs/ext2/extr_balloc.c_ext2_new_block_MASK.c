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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,unsigned long,unsigned long*,int*) ; 

ext2_fsblk_t FUNC1(struct inode *inode, unsigned long goal, int *errp)
{
	unsigned long count = 1;

	return FUNC0(inode, goal, &count, errp);
}