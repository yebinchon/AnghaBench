
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int * i_op; TYPE_1__* i_mapping; } ;
struct configfs_dirent {int s_iattr; } ;
typedef int mode_t ;
struct TYPE_2__ {int * backing_dev_info; int * a_ops; } ;


 int configfs_aops ;
 int configfs_backing_dev_info ;
 int configfs_inode_operations ;
 int configfs_sb ;
 struct inode* new_inode (int ) ;
 int set_default_inode_attr (struct inode*,int ) ;
 int set_inode_attr (struct inode*,int ) ;

struct inode * configfs_new_inode(mode_t mode, struct configfs_dirent * sd)
{
 struct inode * inode = new_inode(configfs_sb);
 if (inode) {
  inode->i_mapping->a_ops = &configfs_aops;
  inode->i_mapping->backing_dev_info = &configfs_backing_dev_info;
  inode->i_op = &configfs_inode_operations;

  if (sd->s_iattr) {




   set_inode_attr(inode, sd->s_iattr);
  } else
   set_default_inode_attr(inode, mode);
 }
 return inode;
}
