#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;
struct audit_names {int /*<<< orphan*/  osid; int /*<<< orphan*/  rdev; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_names*,struct dentry const*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct audit_names *name, const struct dentry *dentry,
			     const struct inode *inode)
{
	name->ino   = inode->i_ino;
	name->dev   = inode->i_sb->s_dev;
	name->mode  = inode->i_mode;
	name->uid   = inode->i_uid;
	name->gid   = inode->i_gid;
	name->rdev  = inode->i_rdev;
	FUNC1(inode, &name->osid);
	FUNC0(name, dentry);
}