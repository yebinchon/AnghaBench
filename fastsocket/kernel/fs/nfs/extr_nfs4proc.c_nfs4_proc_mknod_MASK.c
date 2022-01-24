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
struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct dentry*,struct iattr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs4_exception*) ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry,
		struct iattr *sattr, dev_t rdev)
{
	struct nfs4_exception exception = { };
	int err;
	do {
		err = FUNC2(FUNC0(dir),
				FUNC1(dir, dentry, sattr, rdev),
				&exception);
	} while (exception.retry);
	return err;
}