
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; int d_lock; struct dentry* d_parent; } ;


 int DCACHE_DISCONNECTED ;
 int IS_ROOT (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dentry *
find_disconnected_root(struct dentry *dentry)
{
 dget(dentry);
 spin_lock(&dentry->d_lock);
 while (!IS_ROOT(dentry) &&
        (dentry->d_parent->d_flags & DCACHE_DISCONNECTED)) {
  struct dentry *parent = dentry->d_parent;
  dget(parent);
  spin_unlock(&dentry->d_lock);
  dput(dentry);
  dentry = parent;
  spin_lock(&dentry->d_lock);
 }
 spin_unlock(&dentry->d_lock);
 return dentry;
}
