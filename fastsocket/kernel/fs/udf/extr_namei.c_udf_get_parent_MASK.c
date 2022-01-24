#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct qstr {char* name; int len; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  extLocation; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 struct kernel_lb_addr FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct qstr*,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,struct kernel_lb_addr*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static struct dentry *FUNC8(struct dentry *child)
{
	struct kernel_lb_addr tloc;
	struct inode *inode = NULL;
	struct qstr dotdot = {.name = "..", .len = 2};
	struct fileIdentDesc cfi;
	struct udf_fileident_bh fibh;

	FUNC4();
	if (!FUNC5(child->d_inode, &dotdot, &fibh, &cfi))
		goto out_unlock;

	if (fibh.sbh != fibh.ebh)
		FUNC1(fibh.ebh);
	FUNC1(fibh.sbh);

	tloc = FUNC3(cfi.icb.extLocation);
	inode = FUNC6(child->d_inode->i_sb, &tloc);
	if (!inode)
		goto out_unlock;
	FUNC7();

	return FUNC2(inode);
out_unlock:
	FUNC7();
	return FUNC0(-EACCES);
}