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
typedef  int /*<<< orphan*/  XATTR_TRUSTED_PREFIX ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,char const*,void const*,size_t,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, const char *name, const void *buffer,
	    size_t size, int flags)
{
	if (FUNC3(name) < sizeof(XATTR_TRUSTED_PREFIX))
		return -EINVAL;

	if (!FUNC1(CAP_SYS_ADMIN) || FUNC0(inode))
		return -EPERM;

	return FUNC2(inode, name, buffer, size, flags);
}