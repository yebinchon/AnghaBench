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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct dentry*,char const*) ; 

int FUNC4(struct inode *inode, struct dentry *dentry, const char *oldname)
{
	FUNC0("create symlink %s -> %s/%s\n", oldname, FUNC1(dentry));

	return FUNC3(FUNC2(dentry), dentry, oldname);
}