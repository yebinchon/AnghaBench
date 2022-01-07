
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; int d_count; } ;


 int __d_drop (struct dentry*) ;
 int atomic_read (int *) ;
 int dcache_lock ;
 int dget (struct dentry*) ;
 int shrink_dcache_parent (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dentry_unhash(struct dentry *dentry)
{
 dget(dentry);
 shrink_dcache_parent(dentry);
 spin_lock(&dcache_lock);
 spin_lock(&dentry->d_lock);
 if (atomic_read(&dentry->d_count) == 2)
  __d_drop(dentry);
 spin_unlock(&dentry->d_lock);
 spin_unlock(&dcache_lock);
}
