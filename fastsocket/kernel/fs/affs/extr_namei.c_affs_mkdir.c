
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; scalar_t__ i_nlink; int * i_fop; int * i_op; int i_ino; } ;
struct TYPE_2__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOSPC ;
 int ST_USERDIR ;
 int S_IFDIR ;
 int affs_add_entry (struct inode*,struct inode*,struct dentry*,int ) ;
 int affs_dir_inode_operations ;
 int affs_dir_operations ;
 struct inode* affs_new_inode (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mode_to_prot (struct inode*) ;
 int pr_debug (char*,int ,int,int ,int) ;

int
affs_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 struct inode *inode;
 int error;

 pr_debug("AFFS: mkdir(%lu,\"%.*s\",0%o)\n",dir->i_ino,
   (int)dentry->d_name.len,dentry->d_name.name,mode);

 inode = affs_new_inode(dir);
 if (!inode)
  return -ENOSPC;

 inode->i_mode = S_IFDIR | mode;
 mode_to_prot(inode);

 inode->i_op = &affs_dir_inode_operations;
 inode->i_fop = &affs_dir_operations;

 error = affs_add_entry(dir, inode, dentry, ST_USERDIR);
 if (error) {
  inode->i_nlink = 0;
  mark_inode_dirty(inode);
  iput(inode);
  return error;
 }
 return 0;
}
