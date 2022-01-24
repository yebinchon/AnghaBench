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
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*,struct inode*) ; 

__attribute__((used)) static inline int FUNC4(struct dentry *dentry, struct inode *inode)
{
	int err = FUNC3(dentry, inode);
	if (!err) {
		FUNC0(dentry, inode);
		return 0;
	}
	FUNC1(inode);
	FUNC2(inode);
	return err;
}