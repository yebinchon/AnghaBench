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
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct inode *dir, struct dentry *dentry)
{
	int error;

	/*
	 * Close the file if it's open.
	 */
	FUNC0();
	FUNC1(dentry->d_inode);

	FUNC2(dir);
	error = FUNC3(dentry);
	if (!error)
		FUNC4(dentry);
	FUNC5();
	return error;
}