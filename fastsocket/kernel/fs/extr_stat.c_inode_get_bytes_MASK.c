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

loff_t FUNC2(struct inode *inode)
{
	loff_t ret;

	FUNC0(&inode->i_lock);
	ret = (((loff_t)inode->i_blocks) << 9) + inode->i_bytes;
	FUNC1(&inode->i_lock);
	return ret;
}