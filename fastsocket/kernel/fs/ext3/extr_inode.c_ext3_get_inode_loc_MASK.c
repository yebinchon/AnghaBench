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
struct inode {int dummy; } ;
struct ext3_iloc {int dummy; } ;
struct TYPE_2__ {int i_state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int EXT3_STATE_XATTR ; 
 int FUNC1 (struct inode*,struct ext3_iloc*,int) ; 

int FUNC2(struct inode *inode, struct ext3_iloc *iloc)
{
	/* We have all inode data except xattrs in memory here. */
	return FUNC1(inode, iloc,
		!(FUNC0(inode)->i_state & EXT3_STATE_XATTR));
}