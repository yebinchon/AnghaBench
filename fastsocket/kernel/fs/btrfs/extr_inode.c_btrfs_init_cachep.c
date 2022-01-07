
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_transaction {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_inode {int dummy; } ;
struct btrfs_free_space {int dummy; } ;


 int ENOMEM ;
 int SLAB_MEM_SPREAD ;
 int SLAB_RECLAIM_ACCOUNT ;
 int btrfs_destroy_cachep () ;
 void* btrfs_free_space_cachep ;
 void* btrfs_inode_cachep ;
 void* btrfs_path_cachep ;
 void* btrfs_trans_handle_cachep ;
 void* btrfs_transaction_cachep ;
 int * init_once ;
 void* kmem_cache_create (char*,int,int ,int,int *) ;

int btrfs_init_cachep(void)
{
 btrfs_inode_cachep = kmem_cache_create("btrfs_inode_cache",
   sizeof(struct btrfs_inode), 0,
   SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, init_once);
 if (!btrfs_inode_cachep)
  goto fail;

 btrfs_trans_handle_cachep = kmem_cache_create("btrfs_trans_handle_cache",
   sizeof(struct btrfs_trans_handle), 0,
   SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, ((void*)0));
 if (!btrfs_trans_handle_cachep)
  goto fail;

 btrfs_transaction_cachep = kmem_cache_create("btrfs_transaction_cache",
   sizeof(struct btrfs_transaction), 0,
   SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, ((void*)0));
 if (!btrfs_transaction_cachep)
  goto fail;

 btrfs_path_cachep = kmem_cache_create("btrfs_path_cache",
   sizeof(struct btrfs_path), 0,
   SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, ((void*)0));
 if (!btrfs_path_cachep)
  goto fail;

 btrfs_free_space_cachep = kmem_cache_create("btrfs_free_space_cache",
   sizeof(struct btrfs_free_space), 0,
   SLAB_RECLAIM_ACCOUNT | SLAB_MEM_SPREAD, ((void*)0));
 if (!btrfs_free_space_cachep)
  goto fail;

 return 0;
fail:
 btrfs_destroy_cachep();
 return -ENOMEM;
}
