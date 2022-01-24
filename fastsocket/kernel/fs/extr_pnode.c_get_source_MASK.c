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
struct vfsmount {struct vfsmount* mnt_master; } ;

/* Variables and functions */
 int CL_MAKE_SHARED ; 
 int CL_PROPAGATION ; 
 int CL_SLAVE ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 scalar_t__ FUNC1 (struct vfsmount*) ; 
 struct vfsmount* FUNC2 (struct vfsmount*) ; 

__attribute__((used)) static struct vfsmount *FUNC3(struct vfsmount *dest,
					struct vfsmount *last_dest,
					struct vfsmount *last_src,
					int *type)
{
	struct vfsmount *p_last_src = NULL;
	struct vfsmount *p_last_dest = NULL;
	*type = CL_PROPAGATION;

	if (FUNC1(dest))
		*type |= CL_MAKE_SHARED;

	while (last_dest != dest->mnt_master) {
		p_last_dest = last_dest;
		p_last_src = last_src;
		last_dest = last_dest->mnt_master;
		last_src = last_src->mnt_master;
	}

	if (p_last_dest) {
		do {
			p_last_dest = FUNC2(p_last_dest);
		} while (FUNC0(p_last_dest));
	}

	if (dest != p_last_dest) {
		*type |= CL_SLAVE;
		return last_src;
	} else
		return p_last_src;
}