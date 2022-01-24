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
struct vfsmount {int /*<<< orphan*/  mnt_root; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct cache_detail {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct vfsmount* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct cache_detail*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vfsmount*,char*,int /*<<< orphan*/ ,struct nameidata*) ; 

int FUNC7(struct cache_detail *cd)
{
	struct nameidata nd;
	struct vfsmount *mnt;
	int ret;

	mnt = FUNC3();
	if (FUNC0(mnt))
		return FUNC1(mnt);
	ret = FUNC6(mnt->mnt_root, mnt, "/cache", 0, &nd);
	if (ret)
		goto err;
	ret = FUNC5(nd.path.dentry,
			cd->name, 0600, cd);
	FUNC2(&nd.path);
	if (!ret)
		return ret;
err:
	FUNC4();
	return ret;
}