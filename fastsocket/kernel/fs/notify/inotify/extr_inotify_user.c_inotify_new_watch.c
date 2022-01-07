
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int mask; } ;
struct inotify_inode_mark_entry {int wd; TYPE_3__ fsn_entry; } ;
struct inode {int dummy; } ;
struct TYPE_9__ {int last_wd; TYPE_1__* user; int idr_lock; int idr; } ;
struct fsnotify_group {int mask; TYPE_2__ inotify_data; } ;
typedef int __u32 ;
struct TYPE_8__ {int inotify_watches; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int fsnotify_add_mark (TYPE_3__*,struct fsnotify_group*,struct inode*) ;
 int fsnotify_get_mark (TYPE_3__*) ;
 int fsnotify_init_mark (TYPE_3__*,int ) ;
 int fsnotify_put_mark (TYPE_3__*) ;
 int fsnotify_recalc_group_mask (struct fsnotify_group*) ;
 int idr_get_new_above (int *,TYPE_3__*,int,int*) ;
 int idr_pre_get (int *,int ) ;
 int inotify_arg_to_mask (int ) ;
 int inotify_free_mark ;
 int inotify_inode_mark_cachep ;
 scalar_t__ inotify_max_user_watches ;
 int inotify_remove_from_idr (struct fsnotify_group*,struct inotify_inode_mark_entry*) ;
 struct inotify_inode_mark_entry* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct inotify_inode_mark_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int inotify_new_watch(struct fsnotify_group *group,
        struct inode *inode,
        u32 arg)
{
 struct inotify_inode_mark_entry *tmp_ientry;
 __u32 mask;
 int ret;


 mask = inotify_arg_to_mask(arg);
 if (unlikely(!mask))
  return -EINVAL;

 tmp_ientry = kmem_cache_alloc(inotify_inode_mark_cachep, GFP_KERNEL);
 if (unlikely(!tmp_ientry))
  return -ENOMEM;

 fsnotify_init_mark(&tmp_ientry->fsn_entry, inotify_free_mark);
 tmp_ientry->fsn_entry.mask = mask;
 tmp_ientry->wd = -1;

 ret = -ENOSPC;
 if (atomic_read(&group->inotify_data.user->inotify_watches) >= inotify_max_user_watches)
  goto out_err;
retry:
 ret = -ENOMEM;
 if (unlikely(!idr_pre_get(&group->inotify_data.idr, GFP_KERNEL)))
  goto out_err;


 fsnotify_get_mark(&tmp_ientry->fsn_entry);

 spin_lock(&group->inotify_data.idr_lock);
 ret = idr_get_new_above(&group->inotify_data.idr, &tmp_ientry->fsn_entry,
    group->inotify_data.last_wd + 1,
    &tmp_ientry->wd);
 spin_unlock(&group->inotify_data.idr_lock);
 if (ret) {

  fsnotify_put_mark(&tmp_ientry->fsn_entry);


  if (ret == -EAGAIN)
   goto retry;
  goto out_err;
 }


 ret = fsnotify_add_mark(&tmp_ientry->fsn_entry, group, inode);
 if (ret) {

  inotify_remove_from_idr(group, tmp_ientry);
  goto out_err;
 }


 group->inotify_data.last_wd = tmp_ientry->wd;


 atomic_inc(&group->inotify_data.user->inotify_watches);


 ret = tmp_ientry->wd;


 fsnotify_put_mark(&tmp_ientry->fsn_entry);


 if (mask & ~group->mask)
  fsnotify_recalc_group_mask(group);

out_err:
 if (ret < 0)
  kmem_cache_free(inotify_inode_mark_cachep, tmp_ientry);

 return ret;
}
