
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_lock; int d_count; TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mode; } ;


 int S_ISDIR (int ) ;
 int __d_drop (struct dentry*) ;
 int atomic_read (int *) ;
 int d_unhashed (struct dentry*) ;
 int dcache_lock ;
 int dentry_iput (struct dentry*) ;
 int fsnotify_nameremove (struct dentry*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_delete(struct dentry * dentry)
{
 int isdir = 0;



 spin_lock(&dcache_lock);
 spin_lock(&dentry->d_lock);
 isdir = S_ISDIR(dentry->d_inode->i_mode);
 if (atomic_read(&dentry->d_count) == 1) {
  dentry_iput(dentry);
  fsnotify_nameremove(dentry, isdir);
  return;
 }

 if (!d_unhashed(dentry))
  __d_drop(dentry);

 spin_unlock(&dentry->d_lock);
 spin_unlock(&dcache_lock);

 fsnotify_nameremove(dentry, isdir);
}
