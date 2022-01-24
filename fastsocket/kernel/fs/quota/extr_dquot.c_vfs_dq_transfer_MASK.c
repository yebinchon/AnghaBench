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
struct inode {TYPE_2__* i_sb; } ;
struct iattr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dq_op; } ;
struct TYPE_3__ {scalar_t__ (* transfer ) (struct inode*,struct iattr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ NO_QUOTA ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

int FUNC4(struct inode *inode, struct iattr *iattr)
{
	if (FUNC1(inode->i_sb) && !FUNC0(inode)) {
		FUNC3(inode);
		if (inode->i_sb->dq_op->transfer(inode, iattr) == NO_QUOTA)
			return 1;
	}
	return 0;
}