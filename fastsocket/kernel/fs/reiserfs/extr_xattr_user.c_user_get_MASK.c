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
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  XATTR_USER_PREFIX ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct inode*,char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, const char *name, void *buffer, size_t size)
{

	if (FUNC2(name) < sizeof(XATTR_USER_PREFIX))
		return -EINVAL;
	if (!FUNC1(inode->i_sb))
		return -EOPNOTSUPP;
	return FUNC0(inode, name, buffer, size);
}