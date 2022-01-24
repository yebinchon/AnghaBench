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

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int EINVAL ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  shmem_acl_ops ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, const char *name, const void *value,
		      size_t size, int flags)
{
	if (FUNC1(name, "") != 0)
		return -EINVAL;
	return FUNC0(inode, &shmem_acl_ops, ACL_TYPE_DEFAULT, value,
			       size);
}