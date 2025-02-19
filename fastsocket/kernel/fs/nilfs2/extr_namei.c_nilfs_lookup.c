
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef scalar_t__ ino_t ;


 int ENAMETOOLONG ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ NILFS_NAME_LEN ;
 struct dentry* d_splice_alias (struct inode*,struct dentry*) ;
 struct inode* nilfs_iget (int ,scalar_t__) ;
 scalar_t__ nilfs_inode_by_name (struct inode*,struct dentry*) ;

__attribute__((used)) static struct dentry *
nilfs_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
 struct inode *inode;
 ino_t ino;

 if (dentry->d_name.len > NILFS_NAME_LEN)
  return ERR_PTR(-ENAMETOOLONG);

 ino = nilfs_inode_by_name(dir, dentry);
 inode = ((void*)0);
 if (ino) {
  inode = nilfs_iget(dir->i_sb, ino);
  if (IS_ERR(inode))
   return ERR_CAST(inode);
 }
 return d_splice_alias(inode, dentry);
}
