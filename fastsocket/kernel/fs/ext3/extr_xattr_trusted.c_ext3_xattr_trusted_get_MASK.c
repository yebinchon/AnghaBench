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
 int EINVAL ; 
 int /*<<< orphan*/  EXT3_XATTR_INDEX_TRUSTED ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,char const*,void*,size_t) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, const char *name,
		       void *buffer, size_t size)
{
	if (FUNC1(name, "") == 0)
		return -EINVAL;
	return FUNC0(inode, EXT3_XATTR_INDEX_TRUSTED, name,
			      buffer, size);
}