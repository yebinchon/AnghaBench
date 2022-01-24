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
struct iattr {int ia_valid; int /*<<< orphan*/ * ia_file; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ATTR_FILE ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct iattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct dentry *entry, struct iattr *attr)
{
	struct inode *inode = entry->d_inode;

	if (!FUNC0(FUNC2(inode)))
		return -EACCES;

	if (attr->ia_valid & ATTR_FILE)
		return FUNC1(inode, attr, attr->ia_file);
	else
		return FUNC1(inode, attr, NULL);
}