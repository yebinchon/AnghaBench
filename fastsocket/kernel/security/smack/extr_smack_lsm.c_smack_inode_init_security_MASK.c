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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* XATTR_SMACK_SUFFIX ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct inode*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct inode *dir,
				     char **name, void **value, size_t *len)
{
	char *isp = FUNC1(inode);

	if (name) {
		*name = FUNC0(XATTR_SMACK_SUFFIX, GFP_KERNEL);
		if (*name == NULL)
			return -ENOMEM;
	}

	if (value) {
		*value = FUNC0(isp, GFP_KERNEL);
		if (*value == NULL)
			return -ENOMEM;
	}

	if (len)
		*len = FUNC2(isp) + 1;

	return 0;
}