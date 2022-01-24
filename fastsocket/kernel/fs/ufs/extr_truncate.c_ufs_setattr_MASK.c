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
struct inode {int /*<<< orphan*/  i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 unsigned int ATTR_SIZE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct iattr*) ; 
 int FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = dentry->d_inode;
	unsigned int ia_valid = attr->ia_valid;
	int error;

	error = FUNC1(inode, attr);
	if (error)
		return error;

	if (ia_valid & ATTR_SIZE &&
	    attr->ia_size != FUNC0(inode)) {
		loff_t old_i_size = inode->i_size;
		error = FUNC4(inode, attr->ia_size);
		if (error)
			return error;
		error = FUNC3(inode, old_i_size);
		if (error)
			return error;
	}
	return FUNC2(inode, attr);
}