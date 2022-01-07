
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {int * a_ops; } ;


 int ENOMEM ;
 int MKDEV (int,int) ;


 int OS_TYPE_DIR ;


 int OS_TYPE_SYMLINK ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFIFO ;
 int S_IFSOCK ;
 char* dentry_name (struct dentry*,int ) ;
 int file_type (char*,int*,int*) ;
 int hostfs_aops ;
 int hostfs_dir_fops ;
 int hostfs_dir_iops ;
 int hostfs_file_fops ;
 int hostfs_iops ;
 int hostfs_link_aops ;
 int init_special_inode (struct inode*,int ,int ) ;
 int kfree (char*) ;
 int page_symlink_inode_operations ;

__attribute__((used)) static int init_inode(struct inode *inode, struct dentry *dentry)
{
 char *name;
 int type, err = -ENOMEM;
 int maj, min;
 dev_t rdev = 0;

 if (dentry) {
  name = dentry_name(dentry, 0);
  if (name == ((void*)0))
   goto out;
  type = file_type(name, &maj, &min);

  rdev = MKDEV(maj, min);
  kfree(name);
 }
 else type = OS_TYPE_DIR;

 err = 0;
 if (type == OS_TYPE_SYMLINK)
  inode->i_op = &page_symlink_inode_operations;
 else if (type == OS_TYPE_DIR)
  inode->i_op = &hostfs_dir_iops;
 else inode->i_op = &hostfs_iops;

 if (type == OS_TYPE_DIR) inode->i_fop = &hostfs_dir_fops;
 else inode->i_fop = &hostfs_file_fops;

 if (type == OS_TYPE_SYMLINK)
  inode->i_mapping->a_ops = &hostfs_link_aops;
 else inode->i_mapping->a_ops = &hostfs_aops;

 switch (type) {
 case 130:
  init_special_inode(inode, S_IFCHR, rdev);
  break;
 case 131:
  init_special_inode(inode, S_IFBLK, rdev);
  break;
 case 129:
  init_special_inode(inode, S_IFIFO, 0);
  break;
 case 128:
  init_special_inode(inode, S_IFSOCK, 0);
  break;
 }
 out:
 return err;
}
