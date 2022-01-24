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
typedef  int /*<<< orphan*/  u32 ;
struct inode {scalar_t__ i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_LINKFILE ; 
 int FUNC0 (struct inode*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = old_dentry->d_inode;

	FUNC1("AFFS: link(%u, %u, \"%.*s\")\n", (u32)inode->i_ino, (u32)dir->i_ino,
		 (int)dentry->d_name.len,dentry->d_name.name);

	return FUNC0(dir, inode, dentry, ST_LINKFILE);
}