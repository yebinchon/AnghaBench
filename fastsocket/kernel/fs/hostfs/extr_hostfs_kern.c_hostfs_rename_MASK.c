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
 char* FUNC0 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*) ; 

int FUNC3(struct inode *from_ino, struct dentry *from,
		  struct inode *to_ino, struct dentry *to)
{
	char *from_name, *to_name;
	int err;

	if ((from_name = FUNC0(from_ino, from)) == NULL)
		return -ENOMEM;
	if ((to_name = FUNC0(to_ino, to)) == NULL) {
		FUNC1(from_name);
		return -ENOMEM;
	}
	err = FUNC2(from_name, to_name);
	FUNC1(from_name);
	FUNC1(to_name);
	return err;
}