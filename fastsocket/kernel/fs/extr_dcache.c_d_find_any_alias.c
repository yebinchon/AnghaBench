
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __d_find_any_alias (struct inode*) ;
 int dcache_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dentry * d_find_any_alias(struct inode *inode)
{
 struct dentry *de;

 spin_lock(&dcache_lock);
 de = __d_find_any_alias(inode);
 spin_unlock(&dcache_lock);
 return de;
}
