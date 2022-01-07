
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_dentry; } ;
struct dentry {struct inode* d_inode; int d_alias; int d_flags; } ;


 int DCACHE_NEED_AUTOMOUNT ;
 int IS_AUTOMOUNT (struct inode*) ;
 int fsnotify_d_instantiate (struct dentry*,struct inode*) ;
 int list_add (int *,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __d_instantiate(struct dentry *dentry, struct inode *inode)
{
 if (inode) {
  if (unlikely(IS_AUTOMOUNT(inode)))
   dentry->d_flags |= DCACHE_NEED_AUTOMOUNT;
  list_add(&dentry->d_alias, &inode->i_dentry);
 }
 dentry->d_inode = inode;
 fsnotify_d_instantiate(dentry, inode);
}
