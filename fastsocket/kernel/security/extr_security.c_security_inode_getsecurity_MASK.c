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
struct TYPE_2__ {int (* inode_getsecurity ) (struct inode const*,char const*,void**,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode const*) ; 
 TYPE_1__* security_ops ; 
 int FUNC1 (struct inode const*,char const*,void**,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const struct inode *inode, const char *name, void **buffer, bool alloc)
{
	if (FUNC2(FUNC0(inode)))
		return 0;
	return security_ops->inode_getsecurity(inode, name, buffer, alloc);
}