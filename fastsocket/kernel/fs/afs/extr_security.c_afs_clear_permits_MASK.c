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
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  permits_lock; struct afs_permits* permits; TYPE_1__ fid; } ;
struct afs_permits {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_zap_permits ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_permits*,int /*<<< orphan*/ *) ; 

void FUNC6(struct afs_vnode *vnode)
{
	struct afs_permits *permits;

	FUNC0("{%x:%u}", vnode->fid.vid, vnode->fid.vnode);

	FUNC3(&vnode->permits_lock);
	permits = vnode->permits;
	FUNC5(vnode->permits, NULL);
	FUNC4(&vnode->permits_lock);

	if (permits)
		FUNC2(&permits->rcu, afs_zap_permits);
	FUNC1("");
}