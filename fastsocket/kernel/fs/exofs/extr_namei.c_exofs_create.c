
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int exofs_add_nondir (struct dentry*,struct inode*) ;
 int exofs_aops ;
 int exofs_file_inode_operations ;
 int exofs_file_operations ;
 struct inode* exofs_new_inode (struct inode*,int) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int exofs_create(struct inode *dir, struct dentry *dentry, int mode,
    struct nameidata *nd)
{
 struct inode *inode = exofs_new_inode(dir, mode);
 int err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  inode->i_op = &exofs_file_inode_operations;
  inode->i_fop = &exofs_file_operations;
  inode->i_mapping->a_ops = &exofs_aops;
  mark_inode_dirty(inode);
  err = exofs_add_nondir(dentry, inode);
 }
 return err;
}
