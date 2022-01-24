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
struct inode {int i_bytes; int /*<<< orphan*/  i_lock; scalar_t__ i_blocks; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct inode *inode, loff_t bytes)
{
	FUNC0(&inode->i_lock);
	inode->i_blocks -= bytes >> 9;
	bytes &= 511;
	if (inode->i_bytes < bytes) {
		inode->i_blocks--;
		inode->i_bytes += 512;
	}
	inode->i_bytes -= bytes;
	FUNC1(&inode->i_lock);
}