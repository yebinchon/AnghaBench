
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_root {scalar_t__ cached; TYPE_1__* free_ino_ctl; int cache_wait; } ;
struct TYPE_2__ {scalar_t__ free_space; } ;


 scalar_t__ BTRFS_CACHE_FINISHED ;
 int ENOSPC ;
 int INODE_MAP_CACHE ;
 int btrfs_find_free_objectid (struct btrfs_root*,int *) ;
 int btrfs_find_ino_for_alloc (struct btrfs_root*) ;
 int btrfs_test_opt (struct btrfs_root*,int ) ;
 int start_caching (struct btrfs_root*) ;
 int wait_event (int ,int) ;

int btrfs_find_free_ino(struct btrfs_root *root, u64 *objectid)
{
 if (!btrfs_test_opt(root, INODE_MAP_CACHE))
  return btrfs_find_free_objectid(root, objectid);

again:
 *objectid = btrfs_find_ino_for_alloc(root);

 if (*objectid != 0)
  return 0;

 start_caching(root);

 wait_event(root->cache_wait,
     root->cached == BTRFS_CACHE_FINISHED ||
     root->free_ino_ctl->free_space > 0);

 if (root->cached == BTRFS_CACHE_FINISHED &&
     root->free_ino_ctl->free_space == 0)
  return -ENOSPC;
 else
  goto again;
}
