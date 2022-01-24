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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {int d_flags; scalar_t__ d_inode; TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int DCACHE_NFSFS_RENAMED ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry)
{
	FUNC1("%s", dentry->d_name.name);

	if (dentry->d_flags & DCACHE_NFSFS_RENAMED)
		goto zap;

	if (dentry->d_inode &&
	    FUNC3(AFS_VNODE_DELETED, &FUNC0(dentry->d_inode)->flags))
			goto zap;

	FUNC2(" = 0 [keep]");
	return 0;

zap:
	FUNC2(" = 1 [zap]");
	return 1;
}