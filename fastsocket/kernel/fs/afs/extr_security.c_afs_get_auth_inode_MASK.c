#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  vnode; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct afs_vnode {TYPE_2__ fid; TYPE_1__ status; TYPE_3__ vfs_inode; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct afs_vnode* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,struct key*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct inode* FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static struct afs_vnode *FUNC9(struct afs_vnode *vnode,
					    struct key *key)
{
	struct afs_vnode *auth_vnode;
	struct inode *auth_inode;

	FUNC5("");

	if (FUNC4(vnode->vfs_inode.i_mode)) {
		auth_inode = FUNC8(&vnode->vfs_inode);
		FUNC1(auth_inode != NULL);
	} else {
		auth_inode = FUNC7(vnode->vfs_inode.i_sb, key,
				      &vnode->status.parent, NULL, NULL);
		if (FUNC3(auth_inode))
			return FUNC2(auth_inode);
	}

	auth_vnode = FUNC0(auth_inode);
	FUNC6(" = {%x}", auth_vnode->fid.vnode);
	return auth_vnode;
}