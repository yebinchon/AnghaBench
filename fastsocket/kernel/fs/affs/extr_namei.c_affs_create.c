
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int i_mode; scalar_t__ i_nlink; TYPE_2__* i_mapping; int * i_fop; int * i_op; int i_ino; struct super_block* i_sb; } ;
struct TYPE_4__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_6__ {int s_flags; } ;
struct TYPE_5__ {int * a_ops; } ;


 TYPE_3__* AFFS_SB (struct super_block*) ;
 int ENOSPC ;
 int SF_OFS ;
 int ST_FILE ;
 int affs_add_entry (struct inode*,struct inode*,struct dentry*,int ) ;
 int affs_aops ;
 int affs_aops_ofs ;
 int affs_file_inode_operations ;
 int affs_file_operations ;
 struct inode* affs_new_inode (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mode_to_prot (struct inode*) ;
 int pr_debug (char*,int ,int,int ,int) ;

int
affs_create(struct inode *dir, struct dentry *dentry, int mode, struct nameidata *nd)
{
 struct super_block *sb = dir->i_sb;
 struct inode *inode;
 int error;

 pr_debug("AFFS: create(%lu,\"%.*s\",0%o)\n",dir->i_ino,(int)dentry->d_name.len,
   dentry->d_name.name,mode);

 inode = affs_new_inode(dir);
 if (!inode)
  return -ENOSPC;

 inode->i_mode = mode;
 mode_to_prot(inode);
 mark_inode_dirty(inode);

 inode->i_op = &affs_file_inode_operations;
 inode->i_fop = &affs_file_operations;
 inode->i_mapping->a_ops = (AFFS_SB(sb)->s_flags & SF_OFS) ? &affs_aops_ofs : &affs_aops;
 error = affs_add_entry(dir, inode, dentry, ST_FILE);
 if (error) {
  inode->i_nlink = 0;
  iput(inode);
  return error;
 }
 return 0;
}
