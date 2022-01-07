
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_root {scalar_t__ highest_objectid; int objectid_mutex; } ;


 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 scalar_t__ BTRFS_LAST_FREE_OBJECTID ;
 int ENOSPC ;
 int btrfs_find_highest_objectid (struct btrfs_root*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int btrfs_find_free_objectid(struct btrfs_root *root, u64 *objectid)
{
 int ret;
 mutex_lock(&root->objectid_mutex);

 if (unlikely(root->highest_objectid < BTRFS_FIRST_FREE_OBJECTID)) {
  ret = btrfs_find_highest_objectid(root,
        &root->highest_objectid);
  if (ret)
   goto out;
 }

 if (unlikely(root->highest_objectid >= BTRFS_LAST_FREE_OBJECTID)) {
  ret = -ENOSPC;
  goto out;
 }

 *objectid = ++root->highest_objectid;
 ret = 0;
out:
 mutex_unlock(&root->objectid_mutex);
 return ret;
}
