
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_transaction_info {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int i_sb; TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int nilfs_add_nondir (struct dentry*,struct inode*) ;
 int nilfs_aops ;
 int nilfs_file_inode_operations ;
 int nilfs_file_operations ;
 struct inode* nilfs_new_inode (struct inode*,int) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int nilfs_create(struct inode *dir, struct dentry *dentry, int mode,
   struct nameidata *nd)
{
 struct inode *inode;
 struct nilfs_transaction_info ti;
 int err;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 1);
 if (err)
  return err;
 inode = nilfs_new_inode(dir, mode);
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  inode->i_op = &nilfs_file_inode_operations;
  inode->i_fop = &nilfs_file_operations;
  inode->i_mapping->a_ops = &nilfs_aops;
  mark_inode_dirty(inode);
  err = nilfs_add_nondir(dentry, inode);
 }
 if (!err)
  err = nilfs_transaction_commit(dir->i_sb);
 else
  nilfs_transaction_abort(dir->i_sb);

 return err;
}
