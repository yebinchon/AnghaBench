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
struct vfsmount {int /*<<< orphan*/  mnt_writers; int /*<<< orphan*/  mnt_devname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vfsmount*) ; 
 int /*<<< orphan*/  mnt_cache ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 

void FUNC4(struct vfsmount *mnt)
{
	FUNC1(mnt->mnt_devname);
	FUNC3(mnt);
#ifdef CONFIG_SMP
	free_percpu(mnt->mnt_writers);
#endif
	FUNC2(mnt_cache, mnt);
}