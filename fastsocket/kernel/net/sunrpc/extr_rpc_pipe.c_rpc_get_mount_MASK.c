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

/* Variables and functions */
 struct vfsmount* FUNC0 (int) ; 
 struct vfsmount* rpc_mount ; 
 int /*<<< orphan*/  rpc_mount_count ; 
 int /*<<< orphan*/  rpc_pipe_fs_type ; 
 int FUNC1 (int /*<<< orphan*/ *,struct vfsmount**,int /*<<< orphan*/ *) ; 

struct vfsmount *FUNC2(void)
{
	int err;

	err = FUNC1(&rpc_pipe_fs_type, &rpc_mount, &rpc_mount_count);
	if (err != 0)
		return FUNC0(err);
	return rpc_mount;
}