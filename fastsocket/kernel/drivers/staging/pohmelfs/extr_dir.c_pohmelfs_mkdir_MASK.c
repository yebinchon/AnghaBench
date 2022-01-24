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
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry, int mode)
{
	int err;

	FUNC1(dir);
	err = FUNC2(dir, dentry, 0, mode | S_IFDIR);
	if (err)
		FUNC0(dir);

	return err;
}