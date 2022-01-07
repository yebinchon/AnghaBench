
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_alias; } ;


 int BUG_ON (int) ;
 struct dentry* __d_instantiate_unique (struct dentry*,struct inode*) ;
 int d_unhashed (struct dentry*) ;
 int dcache_lock ;
 int iput (struct inode*) ;
 int list_empty (int *) ;
 int security_d_instantiate (struct dentry*,struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct dentry *d_instantiate_unique(struct dentry *entry, struct inode *inode)
{
 struct dentry *result;

 BUG_ON(!list_empty(&entry->d_alias));

 spin_lock(&dcache_lock);
 result = __d_instantiate_unique(entry, inode);
 spin_unlock(&dcache_lock);

 if (!result) {
  security_d_instantiate(entry, inode);
  return ((void*)0);
 }

 BUG_ON(!d_unhashed(result));
 iput(inode);
 return result;
}
