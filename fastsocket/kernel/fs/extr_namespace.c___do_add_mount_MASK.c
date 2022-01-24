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
struct path {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vfsmount*,struct path*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct vfsmount *newmnt, struct path *path, int mnt_flags)
{
	int err;

	FUNC1(&namespace_sem);
	err = FUNC0(newmnt, path, mnt_flags);
	FUNC2(&namespace_sem);
	return err;
}