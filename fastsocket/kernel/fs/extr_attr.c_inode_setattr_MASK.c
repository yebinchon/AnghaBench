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
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;

/* Variables and functions */
 unsigned int ATTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct iattr*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 

int FUNC4(struct inode *inode, struct iattr *attr)
{
	unsigned int ia_valid = attr->ia_valid;

	if (ia_valid & ATTR_SIZE &&
	    attr->ia_size != FUNC1(inode)) {
		int error;

		error = FUNC3(inode, attr->ia_size);
		if (error)
			return error;
	}

	FUNC0(inode, attr);

	FUNC2(inode);

	return 0;
}