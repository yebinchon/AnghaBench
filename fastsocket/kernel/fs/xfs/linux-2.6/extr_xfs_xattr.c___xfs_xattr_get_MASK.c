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
struct xfs_inode {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ATTR_KERNOVAL ; 
 int EINVAL ; 
 struct xfs_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (struct xfs_inode*,unsigned char*,void*,int*,int) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, const char *name,
		void *value, size_t size, int xflags)
{
	struct xfs_inode *ip = FUNC0(inode);
	int error, asize = size;

	if (FUNC1(name, "") == 0)
		return -EINVAL;

	/* Convert Linux syscall to XFS internal ATTR flags */
	if (!size) {
		xflags |= ATTR_KERNOVAL;
		value = NULL;
	}

	error = -FUNC2(ip, (unsigned char *)name, value, &asize, xflags);
	if (error)
		return error;
	return asize;
}