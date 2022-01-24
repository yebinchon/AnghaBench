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
typedef  scalar_t__ u32 ;
struct path {TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 struct cred* FUNC0 () ; 
 int FUNC1 (struct cred const*,struct inode*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct path *path, loff_t length,
				 unsigned int time_attrs)
{
	const struct cred *cred = FUNC0();
	struct inode *inode = path->dentry->d_inode;
	u32 av = FUNC2(inode);

	if (av)
		return FUNC1(cred, inode, av, NULL);

	return 0;
}