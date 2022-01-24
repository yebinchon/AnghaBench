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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EOPNOTSUPP ; 
 size_t ERANGE ; 
 size_t HFS_ATTRLIST_SIZE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

ssize_t FUNC3(struct dentry *dentry, char *buffer, size_t size)
{
	struct inode *inode = dentry->d_inode;

	if (!FUNC1(inode->i_mode) || FUNC0(inode))
		return -EOPNOTSUPP;

	if (!buffer || !size)
		return HFS_ATTRLIST_SIZE;
	if (size < HFS_ATTRLIST_SIZE)
		return -ERANGE;
	FUNC2(buffer, "hfs.type");
	FUNC2(buffer + sizeof("hfs.type"), "hfs.creator");

	return HFS_ATTRLIST_SIZE;
}