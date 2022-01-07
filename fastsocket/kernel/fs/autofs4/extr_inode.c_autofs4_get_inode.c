
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_2__* s_root; } ;
struct inode {int i_nlink; int * i_op; int i_size; int * i_fop; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_mode; } ;
struct autofs_info {int size; int mode; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_gid; int i_uid; } ;


 int CURRENT_TIME ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int autofs4_dir_inode_operations ;
 int autofs4_dir_operations ;
 int autofs4_symlink_inode_operations ;
 struct inode* new_inode (struct super_block*) ;

struct inode *autofs4_get_inode(struct super_block *sb,
    struct autofs_info *inf)
{
 struct inode *inode = new_inode(sb);

 if (inode == ((void*)0))
  return ((void*)0);

 inode->i_mode = inf->mode;
 if (sb->s_root) {
  inode->i_uid = sb->s_root->d_inode->i_uid;
  inode->i_gid = sb->s_root->d_inode->i_gid;
 }
 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;

 if (S_ISDIR(inf->mode)) {
  inode->i_nlink = 2;
  inode->i_op = &autofs4_dir_inode_operations;
  inode->i_fop = &autofs4_dir_operations;
 } else if (S_ISLNK(inf->mode)) {
  inode->i_size = inf->size;
  inode->i_op = &autofs4_symlink_inode_operations;
 }

 return inode;
}
