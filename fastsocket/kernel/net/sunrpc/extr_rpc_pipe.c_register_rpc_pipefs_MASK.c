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
struct rpc_inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int SLAB_HWCACHE_ALIGN ; 
 int SLAB_MEM_SPREAD ; 
 int SLAB_RECLAIM_ACCOUNT ; 
 int /*<<< orphan*/  init_once ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_inode_cachep ; 
 int /*<<< orphan*/  rpc_pipe_fs_type ; 

int FUNC3(void)
{
	int err;

	rpc_inode_cachep = FUNC0("rpc_inode_cache",
				sizeof(struct rpc_inode),
				0, (SLAB_HWCACHE_ALIGN|SLAB_RECLAIM_ACCOUNT|
						SLAB_MEM_SPREAD),
				init_once);
	if (!rpc_inode_cachep)
		return -ENOMEM;
	err = FUNC2(&rpc_pipe_fs_type);
	if (err) {
		FUNC1(rpc_inode_cachep);
		return err;
	}

	return 0;
}