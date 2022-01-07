
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;
struct inode {int i_state; int i_size; int i_blocks; int i_mode; TYPE_1__ i_data; int * i_op; int * i_fop; struct timespec i_ctime; struct timespec i_atime; struct timespec i_mtime; int i_gid; int i_uid; } ;
struct cramfs_inode {int size; int gid; int uid; int mode; } ;


 int CRAMINO (struct cramfs_inode*) ;
 int I_NEW ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int cramfs_aops ;
 int cramfs_dir_inode_operations ;
 int cramfs_directory_operations ;
 int cramfs_iget5_set ;
 int cramfs_iget5_test ;
 int generic_ro_fops ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,struct cramfs_inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int old_decode_dev (int) ;
 int page_symlink_inode_operations ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *get_cramfs_inode(struct super_block *sb,
    struct cramfs_inode * cramfs_inode)
{
 struct inode *inode = iget5_locked(sb, CRAMINO(cramfs_inode),
         cramfs_iget5_test, cramfs_iget5_set,
         cramfs_inode);
 static struct timespec zerotime;

 if (inode && (inode->i_state & I_NEW)) {
  inode->i_mode = cramfs_inode->mode;
  inode->i_uid = cramfs_inode->uid;
  inode->i_size = cramfs_inode->size;
  inode->i_blocks = (cramfs_inode->size - 1) / 512 + 1;
  inode->i_gid = cramfs_inode->gid;

  inode->i_mtime = inode->i_atime = inode->i_ctime = zerotime;




  if (S_ISREG(inode->i_mode)) {
   inode->i_fop = &generic_ro_fops;
   inode->i_data.a_ops = &cramfs_aops;
  } else if (S_ISDIR(inode->i_mode)) {
   inode->i_op = &cramfs_dir_inode_operations;
   inode->i_fop = &cramfs_directory_operations;
  } else if (S_ISLNK(inode->i_mode)) {
   inode->i_op = &page_symlink_inode_operations;
   inode->i_data.a_ops = &cramfs_aops;
  } else {
   init_special_inode(inode, inode->i_mode,
    old_decode_dev(cramfs_inode->size));
  }
  unlock_new_inode(inode);
 }
 return inode;
}
