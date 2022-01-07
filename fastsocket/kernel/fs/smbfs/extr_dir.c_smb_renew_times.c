
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; struct dentry* d_parent; int d_time; } ;


 scalar_t__ IS_ROOT (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
smb_renew_times(struct dentry * dentry)
{
 dget(dentry);
 spin_lock(&dentry->d_lock);
 for (;;) {
  struct dentry *parent;

  dentry->d_time = jiffies;
  if (IS_ROOT(dentry))
   break;
  parent = dentry->d_parent;
  dget(parent);
  spin_unlock(&dentry->d_lock);
  dput(dentry);
  dentry = parent;
  spin_lock(&dentry->d_lock);
 }
 spin_unlock(&dentry->d_lock);
 dput(dentry);
}
