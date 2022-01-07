
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_transaction_info {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_sb; TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int EMLINK ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ NILFS_LINK_MAX ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int iput (struct inode*) ;
 int nilfs_add_link (struct dentry*,struct inode*) ;
 int nilfs_aops ;
 int nilfs_dir_inode_operations ;
 int nilfs_dir_operations ;
 int nilfs_make_empty (struct inode*,struct inode*) ;
 struct inode* nilfs_new_inode (struct inode*,int) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int nilfs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct inode *inode;
 struct nilfs_transaction_info ti;
 int err;

 if (dir->i_nlink >= NILFS_LINK_MAX)
  return -EMLINK;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 1);
 if (err)
  return err;

 inode_inc_link_count(dir);

 inode = nilfs_new_inode(dir, S_IFDIR | mode);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_dir;

 inode->i_op = &nilfs_dir_inode_operations;
 inode->i_fop = &nilfs_dir_operations;
 inode->i_mapping->a_ops = &nilfs_aops;

 inode_inc_link_count(inode);

 err = nilfs_make_empty(inode, dir);
 if (err)
  goto out_fail;

 err = nilfs_add_link(dentry, inode);
 if (err)
  goto out_fail;

 d_instantiate(dentry, inode);
out:
 if (!err)
  err = nilfs_transaction_commit(dir->i_sb);
 else
  nilfs_transaction_abort(dir->i_sb);

 return err;

out_fail:
 inode_dec_link_count(inode);
 inode_dec_link_count(inode);
 iput(inode);
out_dir:
 inode_dec_link_count(dir);
 goto out;
}
