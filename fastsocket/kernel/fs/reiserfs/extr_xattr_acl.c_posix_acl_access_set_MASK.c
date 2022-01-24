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
typedef  int /*<<< orphan*/  POSIX_ACL_XATTR_ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int EINVAL ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, const char *name,
		     const void *value, size_t size, int flags)
{
	if (FUNC0(name) != sizeof(POSIX_ACL_XATTR_ACCESS) - 1)
		return -EINVAL;
	return FUNC1(inode, ACL_TYPE_ACCESS, value, size);
}