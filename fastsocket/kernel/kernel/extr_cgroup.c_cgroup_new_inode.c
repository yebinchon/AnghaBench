
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {TYPE_1__* i_mapping; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_mode; } ;
typedef int mode_t ;
struct TYPE_2__ {int * backing_dev_info; } ;


 int CURRENT_TIME ;
 int cgroup_backing_dev_info ;
 int current_fsgid () ;
 int current_fsuid () ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *cgroup_new_inode(mode_t mode, struct super_block *sb)
{
 struct inode *inode = new_inode(sb);

 if (inode) {
  inode->i_mode = mode;
  inode->i_uid = current_fsuid();
  inode->i_gid = current_fsgid();
  inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
  inode->i_mapping->backing_dev_info = &cgroup_backing_dev_info;
 }
 return inode;
}
