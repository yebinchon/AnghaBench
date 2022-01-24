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
struct btrfs_transaction {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_inode {int dummy; } ;
struct btrfs_free_space {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int SLAB_MEM_SPREAD ; 
 int SLAB_RECLAIM_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* btrfs_free_space_cachep ; 
 void* btrfs_inode_cachep ; 
 void* btrfs_path_cachep ; 
 void* btrfs_trans_handle_cachep ; 
 void* btrfs_transaction_cachep ; 
 int /*<<< orphan*/ * init_once ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC2(void)
{
	btrfs_inode_cachep = FUNC1("btrfs_inode_cache",
			sizeof(struct btrfs_inode), 0,
			SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, init_once);
	if (!btrfs_inode_cachep)
		goto fail;

	btrfs_trans_handle_cachep = FUNC1("btrfs_trans_handle_cache",
			sizeof(struct btrfs_trans_handle), 0,
			SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, NULL);
	if (!btrfs_trans_handle_cachep)
		goto fail;

	btrfs_transaction_cachep = FUNC1("btrfs_transaction_cache",
			sizeof(struct btrfs_transaction), 0,
			SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, NULL);
	if (!btrfs_transaction_cachep)
		goto fail;

	btrfs_path_cachep = FUNC1("btrfs_path_cache",
			sizeof(struct btrfs_path), 0,
			SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, NULL);
	if (!btrfs_path_cachep)
		goto fail;

	btrfs_free_space_cachep = FUNC1("btrfs_free_space_cache",
			sizeof(struct btrfs_free_space), 0,
			SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, NULL);
	if (!btrfs_free_space_cachep)
		goto fail;

	return 0;
fail:
	FUNC0();
	return -ENOMEM;
}