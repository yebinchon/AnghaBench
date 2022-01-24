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
struct vfsmount {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;

/* Variables and functions */
 int CL_COPY_ALL ; 
 int CL_PRIVATE ; 
 struct vfsmount* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct vfsmount *FUNC3(struct path *path)
{
	struct vfsmount *tree;
	FUNC1(&namespace_sem);
	tree = FUNC0(path->mnt, path->dentry, CL_COPY_ALL | CL_PRIVATE);
	FUNC2(&namespace_sem);
	return tree;
}