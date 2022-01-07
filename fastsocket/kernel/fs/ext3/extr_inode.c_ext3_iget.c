
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_10__ {int t_tid; } ;
typedef TYPE_4__ transaction_t ;
typedef int tid_t ;
struct super_block {int dummy; } ;
struct TYPE_9__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; int i_mode; int i_uid; int i_gid; int i_nlink; int i_size; scalar_t__ i_ino; int * i_op; int * i_fop; struct super_block* i_sb; void* i_generation; void* i_blocks; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; } ;
struct ext3_inode_info {int i_disksize; int i_extra_isize; scalar_t__* i_data; int i_state; int i_datasync_tid; int i_sync_tid; int i_orphan; int i_block_group; void* i_dir_acl; void* i_file_acl; int i_frag_size; int i_frag_no; void* i_faddr; void* i_flags; void* i_dtime; scalar_t__ i_dir_start_lookup; int * i_block_alloc_info; } ;
struct ext3_inode {scalar_t__* i_block; int i_extra_isize; scalar_t__ i_generation; scalar_t__ i_size_high; scalar_t__ i_dir_acl; scalar_t__ i_file_acl; int i_fsize; int i_frag; scalar_t__ i_faddr; scalar_t__ i_flags; scalar_t__ i_blocks; scalar_t__ i_dtime; scalar_t__ i_mtime; scalar_t__ i_ctime; scalar_t__ i_atime; scalar_t__ i_size; int i_links_count; int i_gid_high; int i_uid_high; int i_gid_low; int i_uid_low; int i_mode; } ;
struct ext3_iloc {struct buffer_head* bh; int block_group; } ;
struct buffer_head {int dummy; } ;
struct TYPE_11__ {int j_state_lock; int j_commit_sequence; TYPE_4__* j_committing_transaction; TYPE_4__* j_running_transaction; } ;
typedef TYPE_5__ journal_t ;
typedef int gid_t ;
typedef int __u64 ;
typedef scalar_t__ __le32 ;
struct TYPE_12__ {int s_mount_state; TYPE_5__* s_journal; } ;


 long EIO ;
 long ENOMEM ;
 struct inode* ERR_PTR (long) ;
 long ESTALE ;
 scalar_t__ EXT3_FIRST_INO (struct super_block*) ;
 scalar_t__ EXT3_GOOD_OLD_INODE_SIZE ;
 struct ext3_inode_info* EXT3_I (struct inode*) ;
 scalar_t__ EXT3_INODE_SIZE (struct super_block*) ;
 int EXT3_N_BLOCKS ;
 int EXT3_ORPHAN_FS ;
 TYPE_6__* EXT3_SB (struct super_block*) ;
 int EXT3_STATE_XATTR ;
 int EXT3_XATTR_MAGIC ;
 int INIT_LIST_HEAD (int *) ;
 int I_NEW ;
 int NO_UID32 ;
 scalar_t__ S_ISDIR (scalar_t__) ;
 scalar_t__ S_ISLNK (scalar_t__) ;
 scalar_t__ S_ISREG (scalar_t__) ;
 long __ext3_get_inode_loc (struct inode*,struct ext3_iloc*,int ) ;
 int atomic_set (int *,int ) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ext3_dir_inode_operations ;
 int ext3_dir_operations ;
 int ext3_fast_symlink_inode_operations ;
 int ext3_file_inode_operations ;
 int ext3_file_operations ;
 scalar_t__ ext3_inode_is_fast_symlink (struct inode*) ;
 struct ext3_inode* ext3_raw_inode (struct ext3_iloc*) ;
 int ext3_set_aops (struct inode*) ;
 int ext3_set_inode_flags (struct inode*) ;
 int ext3_special_inode_operations ;
 int ext3_symlink_inode_operations ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int init_special_inode (struct inode*,scalar_t__,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (scalar_t__) ;
 int nd_terminate_link (scalar_t__*,int,int) ;
 int new_decode_dev (void*) ;
 int old_decode_dev (void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_opt (struct super_block*,int ) ;
 int unlock_new_inode (struct inode*) ;

struct inode *ext3_iget(struct super_block *sb, unsigned long ino)
{
 struct ext3_iloc iloc;
 struct ext3_inode *raw_inode;
 struct ext3_inode_info *ei;
 struct buffer_head *bh;
 struct inode *inode;
 journal_t *journal = EXT3_SB(sb)->s_journal;
 transaction_t *transaction;
 long ret;
 int block;

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 ei = EXT3_I(inode);
 ei->i_block_alloc_info = ((void*)0);

 ret = __ext3_get_inode_loc(inode, &iloc, 0);
 if (ret < 0)
  goto bad_inode;
 bh = iloc.bh;
 raw_inode = ext3_raw_inode(&iloc);
 inode->i_mode = le16_to_cpu(raw_inode->i_mode);
 inode->i_uid = (uid_t)le16_to_cpu(raw_inode->i_uid_low);
 inode->i_gid = (gid_t)le16_to_cpu(raw_inode->i_gid_low);
 if(!(test_opt (inode->i_sb, NO_UID32))) {
  inode->i_uid |= le16_to_cpu(raw_inode->i_uid_high) << 16;
  inode->i_gid |= le16_to_cpu(raw_inode->i_gid_high) << 16;
 }
 inode->i_nlink = le16_to_cpu(raw_inode->i_links_count);
 inode->i_size = le32_to_cpu(raw_inode->i_size);
 inode->i_atime.tv_sec = (signed)le32_to_cpu(raw_inode->i_atime);
 inode->i_ctime.tv_sec = (signed)le32_to_cpu(raw_inode->i_ctime);
 inode->i_mtime.tv_sec = (signed)le32_to_cpu(raw_inode->i_mtime);
 inode->i_atime.tv_nsec = inode->i_ctime.tv_nsec = inode->i_mtime.tv_nsec = 0;

 ei->i_state = 0;
 ei->i_dir_start_lookup = 0;
 ei->i_dtime = le32_to_cpu(raw_inode->i_dtime);





 if (inode->i_nlink == 0) {
  if (inode->i_mode == 0 ||
      !(EXT3_SB(inode->i_sb)->s_mount_state & EXT3_ORPHAN_FS)) {

   brelse (bh);
   ret = -ESTALE;
   goto bad_inode;
  }




 }
 inode->i_blocks = le32_to_cpu(raw_inode->i_blocks);
 ei->i_flags = le32_to_cpu(raw_inode->i_flags);





 ei->i_file_acl = le32_to_cpu(raw_inode->i_file_acl);
 if (!S_ISREG(inode->i_mode)) {
  ei->i_dir_acl = le32_to_cpu(raw_inode->i_dir_acl);
 } else {
  inode->i_size |=
   ((__u64)le32_to_cpu(raw_inode->i_size_high)) << 32;
 }
 ei->i_disksize = inode->i_size;
 inode->i_generation = le32_to_cpu(raw_inode->i_generation);
 ei->i_block_group = iloc.block_group;




 for (block = 0; block < EXT3_N_BLOCKS; block++)
  ei->i_data[block] = raw_inode->i_block[block];
 INIT_LIST_HEAD(&ei->i_orphan);
 if (journal) {
  tid_t tid;

  spin_lock(&journal->j_state_lock);
  if (journal->j_running_transaction)
   transaction = journal->j_running_transaction;
  else
   transaction = journal->j_committing_transaction;
  if (transaction)
   tid = transaction->t_tid;
  else
   tid = journal->j_commit_sequence;
  spin_unlock(&journal->j_state_lock);
  atomic_set(&ei->i_sync_tid, tid);
  atomic_set(&ei->i_datasync_tid, tid);
 }

 if (inode->i_ino >= EXT3_FIRST_INO(inode->i_sb) + 1 &&
     EXT3_INODE_SIZE(inode->i_sb) > EXT3_GOOD_OLD_INODE_SIZE) {





  ei->i_extra_isize = le16_to_cpu(raw_inode->i_extra_isize);
  if (EXT3_GOOD_OLD_INODE_SIZE + ei->i_extra_isize >
      EXT3_INODE_SIZE(inode->i_sb)) {
   brelse (bh);
   ret = -EIO;
   goto bad_inode;
  }
  if (ei->i_extra_isize == 0) {

   ei->i_extra_isize = sizeof(struct ext3_inode) -
         EXT3_GOOD_OLD_INODE_SIZE;
  } else {
   __le32 *magic = (void *)raw_inode +
     EXT3_GOOD_OLD_INODE_SIZE +
     ei->i_extra_isize;
   if (*magic == cpu_to_le32(EXT3_XATTR_MAGIC))
     ei->i_state |= EXT3_STATE_XATTR;
  }
 } else
  ei->i_extra_isize = 0;

 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &ext3_file_inode_operations;
  inode->i_fop = &ext3_file_operations;
  ext3_set_aops(inode);
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &ext3_dir_inode_operations;
  inode->i_fop = &ext3_dir_operations;
 } else if (S_ISLNK(inode->i_mode)) {
  if (ext3_inode_is_fast_symlink(inode)) {
   inode->i_op = &ext3_fast_symlink_inode_operations;
   nd_terminate_link(ei->i_data, inode->i_size,
    sizeof(ei->i_data) - 1);
  } else {
   inode->i_op = &ext3_symlink_inode_operations;
   ext3_set_aops(inode);
  }
 } else {
  inode->i_op = &ext3_special_inode_operations;
  if (raw_inode->i_block[0])
   init_special_inode(inode, inode->i_mode,
      old_decode_dev(le32_to_cpu(raw_inode->i_block[0])));
  else
   init_special_inode(inode, inode->i_mode,
      new_decode_dev(le32_to_cpu(raw_inode->i_block[1])));
 }
 brelse (iloc.bh);
 ext3_set_inode_flags(inode);
 unlock_new_inode(inode);
 return inode;

bad_inode:
 iget_failed(inode);
 return ERR_PTR(ret);
}
