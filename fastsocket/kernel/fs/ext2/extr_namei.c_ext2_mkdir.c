
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; TYPE_1__* i_mapping; int i_sb; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int EMLINK ;
 scalar_t__ EXT2_LINK_MAX ;
 scalar_t__ IS_ERR (struct inode*) ;
 int NOBH ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int ext2_add_link (struct dentry*,struct inode*) ;
 int ext2_aops ;
 int ext2_dir_inode_operations ;
 int ext2_dir_operations ;
 int ext2_make_empty (struct inode*,struct inode*) ;
 struct inode* ext2_new_inode (struct inode*,int) ;
 int ext2_nobh_aops ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ test_opt (int ,int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext2_mkdir(struct inode * dir, struct dentry * dentry, int mode)
{
 struct inode * inode;
 int err = -EMLINK;

 if (dir->i_nlink >= EXT2_LINK_MAX)
  goto out;

 inode_inc_link_count(dir);

 inode = ext2_new_inode (dir, S_IFDIR | mode);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_dir;

 inode->i_op = &ext2_dir_inode_operations;
 inode->i_fop = &ext2_dir_operations;
 if (test_opt(inode->i_sb, NOBH))
  inode->i_mapping->a_ops = &ext2_nobh_aops;
 else
  inode->i_mapping->a_ops = &ext2_aops;

 inode_inc_link_count(inode);

 err = ext2_make_empty(inode, dir);
 if (err)
  goto out_fail;

 err = ext2_add_link(dentry, inode);
 if (err)
  goto out_fail;

 d_instantiate(dentry, inode);
 unlock_new_inode(inode);
out:
 return err;

out_fail:
 inode_dec_link_count(inode);
 inode_dec_link_count(inode);
 unlock_new_inode(inode);
 iput(inode);
out_dir:
 inode_dec_link_count(dir);
 goto out;
}
