
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nilfs_sb_info {int s_ifile; int s_nilfs; } ;
struct nilfs_inode {int i_device_code; } ;
struct inode {int i_mode; int * i_op; TYPE_1__* i_mapping; int * i_fop; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int mi_sem; } ;
struct TYPE_3__ {int * a_ops; } ;


 TYPE_2__* NILFS_MDT (struct inode*) ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int le64_to_cpu (int ) ;
 int new_decode_dev (int ) ;
 int nilfs_aops ;
 struct inode* nilfs_dat_inode (int ) ;
 int nilfs_dir_inode_operations ;
 int nilfs_dir_operations ;
 int nilfs_file_inode_operations ;
 int nilfs_file_operations ;
 int nilfs_ifile_get_inode_block (int ,unsigned long,struct buffer_head**) ;
 struct nilfs_inode* nilfs_ifile_map_inode (int ,unsigned long,struct buffer_head*) ;
 int nilfs_ifile_unmap_inode (int ,unsigned long,struct buffer_head*) ;
 int nilfs_read_inode_common (struct inode*,struct nilfs_inode*) ;
 int nilfs_set_inode_flags (struct inode*) ;
 int nilfs_special_inode_operations ;
 int nilfs_symlink_inode_operations ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static int __nilfs_read_inode(struct super_block *sb, unsigned long ino,
         struct inode *inode)
{
 struct nilfs_sb_info *sbi = NILFS_SB(sb);
 struct inode *dat = nilfs_dat_inode(sbi->s_nilfs);
 struct buffer_head *bh;
 struct nilfs_inode *raw_inode;
 int err;

 down_read(&NILFS_MDT(dat)->mi_sem);
 err = nilfs_ifile_get_inode_block(sbi->s_ifile, ino, &bh);
 if (unlikely(err))
  goto bad_inode;

 raw_inode = nilfs_ifile_map_inode(sbi->s_ifile, ino, bh);

 err = nilfs_read_inode_common(inode, raw_inode);
 if (err)
  goto failed_unmap;

 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &nilfs_file_inode_operations;
  inode->i_fop = &nilfs_file_operations;
  inode->i_mapping->a_ops = &nilfs_aops;
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &nilfs_dir_inode_operations;
  inode->i_fop = &nilfs_dir_operations;
  inode->i_mapping->a_ops = &nilfs_aops;
 } else if (S_ISLNK(inode->i_mode)) {
  inode->i_op = &nilfs_symlink_inode_operations;
  inode->i_mapping->a_ops = &nilfs_aops;
 } else {
  inode->i_op = &nilfs_special_inode_operations;
  init_special_inode(
   inode, inode->i_mode,
   new_decode_dev(le64_to_cpu(raw_inode->i_device_code)));
 }
 nilfs_ifile_unmap_inode(sbi->s_ifile, ino, bh);
 brelse(bh);
 up_read(&NILFS_MDT(dat)->mi_sem);
 nilfs_set_inode_flags(inode);
 return 0;

 failed_unmap:
 nilfs_ifile_unmap_inode(sbi->s_ifile, ino, bh);
 brelse(bh);

 bad_inode:
 up_read(&NILFS_MDT(dat)->mi_sem);
 return err;
}
