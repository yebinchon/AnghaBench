
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_alias; } ;


 int BUG_ON (int) ;
 int __d_instantiate (struct dentry*,struct inode*) ;
 int dcache_lock ;
 int list_empty (int *) ;
 int security_d_instantiate (struct dentry*,struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_instantiate(struct dentry *entry, struct inode * inode)
{
 BUG_ON(!list_empty(&entry->d_alias));
 spin_lock(&dcache_lock);
 __d_instantiate(entry, inode);
 spin_unlock(&dcache_lock);
 security_d_instantiate(entry, inode);
}
