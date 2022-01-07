
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int d_parent; } ;


 scalar_t__ S_ISDIR (int ) ;
 int __d_instantiate (struct dentry*,struct inode*) ;
 struct dentry* __find_moveable_alias (struct inode*,int ) ;
 int d_add (struct dentry*,struct inode*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int d_rehash (struct dentry*) ;
 int dcache_lock ;
 int iput (struct inode*) ;
 int security_d_instantiate (struct dentry*,struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dentry *d_splice_alias(struct inode *inode, struct dentry *dentry)
{
 struct dentry *new = ((void*)0);

 if (inode && S_ISDIR(inode->i_mode)) {
  spin_lock(&dcache_lock);
  new = __find_moveable_alias(inode, dentry->d_parent);
  if (new) {
   spin_unlock(&dcache_lock);
   security_d_instantiate(new, inode);
   d_rehash(dentry);
   d_move(new, dentry);
   iput(inode);
  } else {

   __d_instantiate(dentry, inode);
   spin_unlock(&dcache_lock);
   security_d_instantiate(dentry, inode);
   d_rehash(dentry);
  }
 } else
  d_add(dentry, inode);
 return new;
}
