
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_fsnotify_mark_entries; } ;
struct fsnotify_mark_entry {int lock; int g_list; int i_list; struct inode* inode; struct fsnotify_group* group; } ;
struct fsnotify_group {int mark_lock; int num_marks; int mark_entries; } ;


 int EEXIST ;
 int EINVAL ;
 int __fsnotify_update_child_dentry_flags (struct inode*) ;
 int atomic_inc (int *) ;
 struct fsnotify_mark_entry* fsnotify_find_mark_entry (struct fsnotify_group*,struct inode*) ;
 int fsnotify_get_mark (struct fsnotify_mark_entry*) ;
 int fsnotify_put_mark (struct fsnotify_mark_entry*) ;
 int fsnotify_recalc_inode_mask_locked (struct inode*) ;
 int hlist_add_head (int *,int *) ;
 struct inode* igrab (struct inode*) ;
 int iput (struct inode*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int fsnotify_add_mark(struct fsnotify_mark_entry *entry,
        struct fsnotify_group *group, struct inode *inode)
{
 struct fsnotify_mark_entry *lentry;
 int ret = 0;

 inode = igrab(inode);
 if (unlikely(!inode))
  return -EINVAL;







 spin_lock(&entry->lock);
 spin_lock(&group->mark_lock);
 spin_lock(&inode->i_lock);

 lentry = fsnotify_find_mark_entry(group, inode);
 if (!lentry) {
  entry->group = group;
  entry->inode = inode;

  hlist_add_head(&entry->i_list, &inode->i_fsnotify_mark_entries);
  list_add(&entry->g_list, &group->mark_entries);

  fsnotify_get_mark(entry);

  atomic_inc(&group->num_marks);

  fsnotify_recalc_inode_mask_locked(inode);
 }

 spin_unlock(&inode->i_lock);
 spin_unlock(&group->mark_lock);
 spin_unlock(&entry->lock);

 if (lentry) {
  ret = -EEXIST;
  iput(inode);
  fsnotify_put_mark(lentry);
 } else {
  __fsnotify_update_child_dentry_flags(inode);
 }

 return ret;
}
