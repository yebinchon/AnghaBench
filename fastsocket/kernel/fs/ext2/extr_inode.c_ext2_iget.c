
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uid_t ;
struct super_block {int dummy; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; int i_mode; int i_uid; int i_gid; int i_nlink; int i_size; int * i_op; TYPE_1__* i_mapping; int i_sb; int * i_fop; void* i_generation; void* i_blocks; TYPE_4__ i_ctime; TYPE_3__ i_mtime; TYPE_2__ i_atime; } ;
struct ext2_inode_info {unsigned long i_block_group; scalar_t__* i_data; scalar_t__ i_dir_start_lookup; scalar_t__ i_state; void* i_dtime; void* i_dir_acl; void* i_file_acl; int i_frag_size; int i_frag_no; void* i_faddr; void* i_flags; int * i_block_alloc_info; } ;
struct ext2_inode {scalar_t__* i_block; scalar_t__ i_generation; scalar_t__ i_dir_acl; scalar_t__ i_size_high; scalar_t__ i_file_acl; int i_fsize; int i_frag; scalar_t__ i_faddr; scalar_t__ i_flags; scalar_t__ i_blocks; scalar_t__ i_dtime; scalar_t__ i_mtime; scalar_t__ i_ctime; scalar_t__ i_atime; scalar_t__ i_size; int i_links_count; int i_gid_high; int i_uid_high; int i_gid_low; int i_uid_low; int i_mode; } ;
struct buffer_head {int dummy; } ;
typedef int gid_t ;
typedef int __u64 ;
struct TYPE_5__ {int * a_ops; } ;


 long EIO ;
 long ENOMEM ;
 struct inode* ERR_PTR (long) ;
 long ESTALE ;
 struct ext2_inode_info* EXT2_I (struct inode*) ;
 unsigned long EXT2_INODES_PER_GROUP (int ) ;
 int EXT2_N_BLOCKS ;
 scalar_t__ IS_ERR (struct ext2_inode*) ;
 int I_NEW ;
 int NOBH ;
 int NO_UID32 ;
 long PTR_ERR (struct ext2_inode*) ;
 scalar_t__ S_ISDIR (scalar_t__) ;
 scalar_t__ S_ISLNK (scalar_t__) ;
 scalar_t__ S_ISREG (scalar_t__) ;
 int brelse (struct buffer_head*) ;
 int ext2_aops ;
 int ext2_aops_xip ;
 int ext2_dir_inode_operations ;
 int ext2_dir_operations ;
 int ext2_fast_symlink_inode_operations ;
 int ext2_file_inode_operations ;
 int ext2_file_operations ;
 struct ext2_inode* ext2_get_inode (int ,unsigned long,struct buffer_head**) ;
 scalar_t__ ext2_inode_is_fast_symlink (struct inode*) ;
 int ext2_nobh_aops ;
 int ext2_set_inode_flags (struct inode*) ;
 int ext2_special_inode_operations ;
 int ext2_symlink_inode_operations ;
 scalar_t__ ext2_use_xip (int ) ;
 int ext2_xip_file_operations ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int init_special_inode (struct inode*,scalar_t__,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (scalar_t__) ;
 int nd_terminate_link (scalar_t__*,int,int) ;
 int new_decode_dev (void*) ;
 int old_decode_dev (void*) ;
 scalar_t__ test_opt (int ,int ) ;
 int unlock_new_inode (struct inode*) ;

struct inode *ext2_iget (struct super_block *sb, unsigned long ino)
{
 struct ext2_inode_info *ei;
 struct buffer_head * bh;
 struct ext2_inode *raw_inode;
 struct inode *inode;
 long ret = -EIO;
 int n;

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 ei = EXT2_I(inode);
 ei->i_block_alloc_info = ((void*)0);

 raw_inode = ext2_get_inode(inode->i_sb, ino, &bh);
 if (IS_ERR(raw_inode)) {
  ret = PTR_ERR(raw_inode);
   goto bad_inode;
 }

 inode->i_mode = le16_to_cpu(raw_inode->i_mode);
 inode->i_uid = (uid_t)le16_to_cpu(raw_inode->i_uid_low);
 inode->i_gid = (gid_t)le16_to_cpu(raw_inode->i_gid_low);
 if (!(test_opt (inode->i_sb, NO_UID32))) {
  inode->i_uid |= le16_to_cpu(raw_inode->i_uid_high) << 16;
  inode->i_gid |= le16_to_cpu(raw_inode->i_gid_high) << 16;
 }
 inode->i_nlink = le16_to_cpu(raw_inode->i_links_count);
 inode->i_size = le32_to_cpu(raw_inode->i_size);
 inode->i_atime.tv_sec = (signed)le32_to_cpu(raw_inode->i_atime);
 inode->i_ctime.tv_sec = (signed)le32_to_cpu(raw_inode->i_ctime);
 inode->i_mtime.tv_sec = (signed)le32_to_cpu(raw_inode->i_mtime);
 inode->i_atime.tv_nsec = inode->i_mtime.tv_nsec = inode->i_ctime.tv_nsec = 0;
 ei->i_dtime = le32_to_cpu(raw_inode->i_dtime);





 if (inode->i_nlink == 0 && (inode->i_mode == 0 || ei->i_dtime)) {

  brelse (bh);
  ret = -ESTALE;
  goto bad_inode;
 }
 inode->i_blocks = le32_to_cpu(raw_inode->i_blocks);
 ei->i_flags = le32_to_cpu(raw_inode->i_flags);
 ei->i_faddr = le32_to_cpu(raw_inode->i_faddr);
 ei->i_frag_no = raw_inode->i_frag;
 ei->i_frag_size = raw_inode->i_fsize;
 ei->i_file_acl = le32_to_cpu(raw_inode->i_file_acl);
 ei->i_dir_acl = 0;
 if (S_ISREG(inode->i_mode))
  inode->i_size |= ((__u64)le32_to_cpu(raw_inode->i_size_high)) << 32;
 else
  ei->i_dir_acl = le32_to_cpu(raw_inode->i_dir_acl);
 ei->i_dtime = 0;
 inode->i_generation = le32_to_cpu(raw_inode->i_generation);
 ei->i_state = 0;
 ei->i_block_group = (ino - 1) / EXT2_INODES_PER_GROUP(inode->i_sb);
 ei->i_dir_start_lookup = 0;





 for (n = 0; n < EXT2_N_BLOCKS; n++)
  ei->i_data[n] = raw_inode->i_block[n];

 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &ext2_file_inode_operations;
  if (ext2_use_xip(inode->i_sb)) {
   inode->i_mapping->a_ops = &ext2_aops_xip;
   inode->i_fop = &ext2_xip_file_operations;
  } else if (test_opt(inode->i_sb, NOBH)) {
   inode->i_mapping->a_ops = &ext2_nobh_aops;
   inode->i_fop = &ext2_file_operations;
  } else {
   inode->i_mapping->a_ops = &ext2_aops;
   inode->i_fop = &ext2_file_operations;
  }
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &ext2_dir_inode_operations;
  inode->i_fop = &ext2_dir_operations;
  if (test_opt(inode->i_sb, NOBH))
   inode->i_mapping->a_ops = &ext2_nobh_aops;
  else
   inode->i_mapping->a_ops = &ext2_aops;
 } else if (S_ISLNK(inode->i_mode)) {
  if (ext2_inode_is_fast_symlink(inode)) {
   inode->i_op = &ext2_fast_symlink_inode_operations;
   nd_terminate_link(ei->i_data, inode->i_size,
    sizeof(ei->i_data) - 1);
  } else {
   inode->i_op = &ext2_symlink_inode_operations;
   if (test_opt(inode->i_sb, NOBH))
    inode->i_mapping->a_ops = &ext2_nobh_aops;
   else
    inode->i_mapping->a_ops = &ext2_aops;
  }
 } else {
  inode->i_op = &ext2_special_inode_operations;
  if (raw_inode->i_block[0])
   init_special_inode(inode, inode->i_mode,
      old_decode_dev(le32_to_cpu(raw_inode->i_block[0])));
  else
   init_special_inode(inode, inode->i_mode,
      new_decode_dev(le32_to_cpu(raw_inode->i_block[1])));
 }
 brelse (bh);
 ext2_set_inode_flags(inode);
 unlock_new_inode(inode);
 return inode;

bad_inode:
 iget_failed(inode);
 return ERR_PTR(ret);
}
