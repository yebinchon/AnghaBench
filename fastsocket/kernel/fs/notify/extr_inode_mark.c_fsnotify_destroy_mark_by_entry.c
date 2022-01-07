
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct fsnotify_mark_entry {int lock; struct fsnotify_group* group; int g_list; struct inode* inode; int i_list; int refcnt; } ;
struct fsnotify_group {int num_marks; TYPE_1__* ops; int mark_lock; } ;
struct TYPE_2__ {int (* freeing_mark ) (struct fsnotify_mark_entry*,struct fsnotify_group*) ;} ;


 int BUG_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int fsnotify_final_destroy_group (struct fsnotify_group*) ;
 int fsnotify_put_mark (struct fsnotify_mark_entry*) ;
 int fsnotify_recalc_inode_mask_locked (struct inode*) ;
 int hlist_del_init (int *) ;
 int iput (struct inode*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct fsnotify_mark_entry*,struct fsnotify_group*) ;
 scalar_t__ unlikely (int ) ;

void fsnotify_destroy_mark_by_entry(struct fsnotify_mark_entry *entry)
{
 struct fsnotify_group *group;
 struct inode *inode;

 spin_lock(&entry->lock);

 group = entry->group;
 inode = entry->inode;

 BUG_ON(group && !inode);
 BUG_ON(!group && inode);


 if (!group) {
  spin_unlock(&entry->lock);
  return;
 }


 BUG_ON(atomic_read(&entry->refcnt) < 2);

 spin_lock(&group->mark_lock);
 spin_lock(&inode->i_lock);

 hlist_del_init(&entry->i_list);
 entry->inode = ((void*)0);

 list_del_init(&entry->g_list);
 entry->group = ((void*)0);

 fsnotify_put_mark(entry);






 fsnotify_recalc_inode_mask_locked(inode);

 spin_unlock(&inode->i_lock);
 spin_unlock(&group->mark_lock);
 spin_unlock(&entry->lock);






 if (group->ops->freeing_mark)
  group->ops->freeing_mark(entry, group);
 iput(inode);






 if (unlikely(atomic_dec_and_test(&group->num_marks)))
  fsnotify_final_destroy_group(group);
}
