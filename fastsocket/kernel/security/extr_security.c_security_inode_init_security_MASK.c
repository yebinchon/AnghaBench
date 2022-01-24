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
struct TYPE_2__ {int (* inode_init_security ) (struct inode*,struct inode*,char**,void**,size_t*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* security_ops ; 
 int FUNC1 (struct inode*,struct inode*,char**,void**,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *inode, struct inode *dir,
				  char **name, void **value, size_t *len)
{
	if (FUNC2(FUNC0(inode)))
		return -EOPNOTSUPP;
	return security_ops->inode_init_security(inode, dir, name, value, len);
}