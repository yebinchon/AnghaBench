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
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct key* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__* volume; TYPE_1__ fid; } ;
struct TYPE_4__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_vnode*,struct key*) ; 

int FUNC7(struct inode *inode, struct file *file)
{
	struct afs_vnode *vnode = FUNC0(inode);
	struct key *key;
	int ret;

	FUNC3("{%x:%u},", vnode->fid.vid, vnode->fid.vnode);

	key = FUNC5(vnode->volume->cell);
	if (FUNC1(key)) {
		FUNC4(" = %ld [key]", FUNC2(key));
		return FUNC2(key);
	}

	ret = FUNC6(vnode, key);
	if (ret < 0) {
		FUNC4(" = %d [val]", ret);
		return ret;
	}

	file->private_data = key;
	FUNC4(" = 0");
	return 0;
}