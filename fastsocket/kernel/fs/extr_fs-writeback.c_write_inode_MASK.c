#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* write_inode ) (struct inode*,struct writeback_control*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct writeback_control*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct writeback_control *wbc)
{
	if (inode->i_sb->s_op->write_inode && !FUNC0(inode))
		return inode->i_sb->s_op->write_inode(inode, wbc);
	return 0;
}