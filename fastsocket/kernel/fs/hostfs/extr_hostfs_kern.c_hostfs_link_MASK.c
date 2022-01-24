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
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (struct dentry*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*) ; 

int FUNC4(struct dentry *to, struct inode *ino, struct dentry *from)
{
	char *from_name, *to_name;
	int err;

	if ((from_name = FUNC1(ino, from)) == NULL)
		return -ENOMEM;
	to_name = FUNC0(to, 0);
	if (to_name == NULL) {
		FUNC2(from_name);
		return -ENOMEM;
	}
	err = FUNC3(to_name, from_name);
	FUNC2(from_name);
	FUNC2(to_name);
	return err;
}