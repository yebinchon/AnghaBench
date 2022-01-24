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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 

__attribute__((used)) static int
FUNC7(struct dentry *dentry, struct inode *dir, struct dentry *new_dentry)
{
	int error;

	FUNC0("smb_link old=%s/%s new=%s/%s\n",
	       FUNC1(dentry), FUNC1(new_dentry));
	FUNC4(dir);
	error = FUNC5(FUNC2(dentry), dentry, new_dentry);
	if (!error) {
		FUNC6(dentry);
		error = FUNC3(new_dentry, 0, 0);
	}
	return error;
}