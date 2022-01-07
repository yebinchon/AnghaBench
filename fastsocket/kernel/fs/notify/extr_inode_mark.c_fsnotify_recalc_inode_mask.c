
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;


 int __fsnotify_update_child_dentry_flags (struct inode*) ;
 int fsnotify_recalc_inode_mask_locked (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fsnotify_recalc_inode_mask(struct inode *inode)
{
 spin_lock(&inode->i_lock);
 fsnotify_recalc_inode_mask_locked(inode);
 spin_unlock(&inode->i_lock);

 __fsnotify_update_child_dentry_flags(inode);
}
