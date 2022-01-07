
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int EMLINK ;
 scalar_t__ EXOFS_LINK_MAX ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFDIR ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int exofs_add_link (struct dentry*,struct inode*) ;
 int exofs_aops ;
 int exofs_dir_inode_operations ;
 int exofs_dir_operations ;
 int exofs_make_empty (struct inode*,struct inode*) ;
 struct inode* exofs_new_inode (struct inode*,int) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static int exofs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct inode *inode;
 int err = -EMLINK;

 if (dir->i_nlink >= EXOFS_LINK_MAX)
  goto out;

 inode_inc_link_count(dir);

 inode = exofs_new_inode(dir, S_IFDIR | mode);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out_dir;

 inode->i_op = &exofs_dir_inode_operations;
 inode->i_fop = &exofs_dir_operations;
 inode->i_mapping->a_ops = &exofs_aops;

 inode_inc_link_count(inode);

 err = exofs_make_empty(inode, dir);
 if (err)
  goto out_fail;

 err = exofs_add_link(dentry, inode);
 if (err)
  goto out_fail;

 d_instantiate(dentry, inode);
out:
 return err;

out_fail:
 inode_dec_link_count(inode);
 inode_dec_link_count(inode);
 iput(inode);
out_dir:
 inode_dec_link_count(dir);
 goto out;
}
