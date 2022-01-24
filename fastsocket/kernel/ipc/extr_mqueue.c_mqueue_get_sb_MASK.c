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
struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {void* ipc_ns; } ;

/* Variables and functions */
 int MS_KERNMOUNT ; 
 TYPE_2__* current ; 
 int FUNC0 (struct file_system_type*,int,void*,int /*<<< orphan*/ ,struct vfsmount*) ; 
 int /*<<< orphan*/  mqueue_fill_super ; 

__attribute__((used)) static int FUNC1(struct file_system_type *fs_type,
			 int flags, const char *dev_name,
			 void *data, struct vfsmount *mnt)
{
	if (!(flags & MS_KERNMOUNT))
		data = current->nsproxy->ipc_ns;
	return FUNC0(fs_type, flags, data, mqueue_fill_super, mnt);
}