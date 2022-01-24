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
struct inode {unsigned int i_size; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {unsigned int i_disksize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static void FUNC3(struct inode *inode, loff_t pos, unsigned copied)
{
	/* What matters to us is i_disksize. We don't write i_size anywhere */
	if (pos + copied > inode->i_size)
		FUNC1(inode, pos + copied);
	if (pos + copied > FUNC0(inode)->i_disksize) {
		FUNC0(inode)->i_disksize = pos + copied;
		FUNC2(inode);
	}
}