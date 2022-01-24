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
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;
struct vfsmount {int /*<<< orphan*/  mnt_slave_list; TYPE_1__ mnt_slave; struct vfsmount* mnt_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfsmount*) ; 
 struct vfsmount* FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vfsmount* FUNC3 (struct vfsmount*) ; 
 struct vfsmount* FUNC4 (struct vfsmount*) ; 

__attribute__((used)) static struct vfsmount *FUNC5(struct vfsmount *m,
					 struct vfsmount *origin)
{
	/* are there any slaves of this mount? */
	if (!FUNC0(m) && !FUNC2(&m->mnt_slave_list))
		return FUNC1(m);

	while (1) {
		struct vfsmount *next;
		struct vfsmount *master = m->mnt_master;

		if (master == origin->mnt_master) {
			next = FUNC3(m);
			return ((next == origin) ? NULL : next);
		} else if (m->mnt_slave.next != &master->mnt_slave_list)
			return FUNC4(m);

		/* back at master */
		m = master;
	}
}