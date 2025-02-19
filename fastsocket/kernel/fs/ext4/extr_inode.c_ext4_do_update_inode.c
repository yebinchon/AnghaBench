
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_dirt; } ;
struct inode {int i_mode; int i_nlink; int i_generation; int i_version; struct super_block* i_sb; int i_rdev; int i_gid; int i_uid; } ;
struct ext4_inode_info {int i_dtime; int i_flags; int i_file_acl; int i_disksize; int i_extra_isize; void** i_data; } ;
struct ext4_inode {void* i_extra_isize; void* i_version_hi; void* i_disk_version; void** i_block; void* i_generation; void* i_file_acl_lo; void* i_file_acl_high; void* i_flags; void* i_dtime; void* i_links_count; void* i_gid_high; void* i_uid_high; void* i_gid_low; void* i_uid_low; void* i_mode; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {struct buffer_head* s_sbh; TYPE_1__* s_es; int s_inode_size; } ;
struct TYPE_3__ {void* s_creator_os; void* s_rev_level; } ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EXT4_EINODE_SET_XTIME (int ,struct ext4_inode_info*,struct ext4_inode*) ;
 int EXT4_FEATURE_RO_COMPAT_LARGE_FILE ;
 scalar_t__ EXT4_FITS_IN_INODE (struct ext4_inode*,struct ext4_inode_info*,int ) ;
 int EXT4_GOOD_OLD_REV ;
 int EXT4_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT4_INODE_SET_XTIME (int ,struct inode*,struct ext4_inode*) ;
 int EXT4_N_BLOCKS ;
 int EXT4_OS_HURD ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 int EXT4_SET_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT4_STATE_NEW ;
 int NO_UID32 ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_get_inode_flags (struct ext4_inode_info*) ;
 int ext4_handle_dirty_metadata (int *,int *,struct buffer_head*) ;
 int ext4_handle_sync (int *) ;
 scalar_t__ ext4_inode_blocks_set (int *,struct ext4_inode*,struct ext4_inode_info*) ;
 int ext4_isize (struct ext4_inode*) ;
 int ext4_isize_set (struct ext4_inode*,int) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 struct ext4_inode* ext4_raw_inode (struct ext4_iloc*) ;
 int ext4_std_error (struct super_block*,int) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int ext4_update_dynamic_rev (struct super_block*) ;
 int ext4_update_inode_fsync_trans (int *,struct inode*,int) ;
 int fs_high2lowgid (int ) ;
 int fs_high2lowuid (int ) ;
 int high_16_bits (int ) ;
 int i_atime ;
 int i_crtime ;
 int i_ctime ;
 int i_mtime ;
 int i_version_hi ;
 int low_16_bits (int ) ;
 int memset (struct ext4_inode*,int ,int ) ;
 int new_encode_dev (int ) ;
 int old_encode_dev (int ) ;
 scalar_t__ old_valid_dev (int ) ;
 int test_opt (struct super_block*,int ) ;

__attribute__((used)) static int ext4_do_update_inode(handle_t *handle,
    struct inode *inode,
    struct ext4_iloc *iloc)
{
 struct ext4_inode *raw_inode = ext4_raw_inode(iloc);
 struct ext4_inode_info *ei = EXT4_I(inode);
 struct buffer_head *bh = iloc->bh;
 int err = 0, rc, block;
 int need_datasync = 0;



 if (ext4_test_inode_state(inode, EXT4_STATE_NEW))
  memset(raw_inode, 0, EXT4_SB(inode->i_sb)->s_inode_size);

 ext4_get_inode_flags(ei);
 raw_inode->i_mode = cpu_to_le16(inode->i_mode);
 if (!(test_opt(inode->i_sb, NO_UID32))) {
  raw_inode->i_uid_low = cpu_to_le16(low_16_bits(inode->i_uid));
  raw_inode->i_gid_low = cpu_to_le16(low_16_bits(inode->i_gid));




  if (!ei->i_dtime) {
   raw_inode->i_uid_high =
    cpu_to_le16(high_16_bits(inode->i_uid));
   raw_inode->i_gid_high =
    cpu_to_le16(high_16_bits(inode->i_gid));
  } else {
   raw_inode->i_uid_high = 0;
   raw_inode->i_gid_high = 0;
  }
 } else {
  raw_inode->i_uid_low =
   cpu_to_le16(fs_high2lowuid(inode->i_uid));
  raw_inode->i_gid_low =
   cpu_to_le16(fs_high2lowgid(inode->i_gid));
  raw_inode->i_uid_high = 0;
  raw_inode->i_gid_high = 0;
 }
 raw_inode->i_links_count = cpu_to_le16(inode->i_nlink);

 EXT4_INODE_SET_XTIME(i_ctime, inode, raw_inode);
 EXT4_INODE_SET_XTIME(i_mtime, inode, raw_inode);
 EXT4_INODE_SET_XTIME(i_atime, inode, raw_inode);
 EXT4_EINODE_SET_XTIME(i_crtime, ei, raw_inode);

 if (ext4_inode_blocks_set(handle, raw_inode, ei))
  goto out_brelse;
 raw_inode->i_dtime = cpu_to_le32(ei->i_dtime);
 raw_inode->i_flags = cpu_to_le32(ei->i_flags);
 if (EXT4_SB(inode->i_sb)->s_es->s_creator_os !=
     cpu_to_le32(EXT4_OS_HURD))
  raw_inode->i_file_acl_high =
   cpu_to_le16(ei->i_file_acl >> 32);
 raw_inode->i_file_acl_lo = cpu_to_le32(ei->i_file_acl);
 if (ei->i_disksize != ext4_isize(raw_inode)) {
  ext4_isize_set(raw_inode, ei->i_disksize);
  need_datasync = 1;
 }
 if (ei->i_disksize > 0x7fffffffULL) {
  struct super_block *sb = inode->i_sb;
  if (!EXT4_HAS_RO_COMPAT_FEATURE(sb,
    EXT4_FEATURE_RO_COMPAT_LARGE_FILE) ||
    EXT4_SB(sb)->s_es->s_rev_level ==
    cpu_to_le32(EXT4_GOOD_OLD_REV)) {



   err = ext4_journal_get_write_access(handle,
     EXT4_SB(sb)->s_sbh);
   if (err)
    goto out_brelse;
   ext4_update_dynamic_rev(sb);
   EXT4_SET_RO_COMPAT_FEATURE(sb,
     EXT4_FEATURE_RO_COMPAT_LARGE_FILE);
   sb->s_dirt = 1;
   ext4_handle_sync(handle);
   err = ext4_handle_dirty_metadata(handle, ((void*)0),
     EXT4_SB(sb)->s_sbh);
  }
 }
 raw_inode->i_generation = cpu_to_le32(inode->i_generation);
 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode)) {
  if (old_valid_dev(inode->i_rdev)) {
   raw_inode->i_block[0] =
    cpu_to_le32(old_encode_dev(inode->i_rdev));
   raw_inode->i_block[1] = 0;
  } else {
   raw_inode->i_block[0] = 0;
   raw_inode->i_block[1] =
    cpu_to_le32(new_encode_dev(inode->i_rdev));
   raw_inode->i_block[2] = 0;
  }
 } else
  for (block = 0; block < EXT4_N_BLOCKS; block++)
   raw_inode->i_block[block] = ei->i_data[block];

 raw_inode->i_disk_version = cpu_to_le32(inode->i_version);
 if (ei->i_extra_isize) {
  if (EXT4_FITS_IN_INODE(raw_inode, ei, i_version_hi))
   raw_inode->i_version_hi =
   cpu_to_le32(inode->i_version >> 32);
  raw_inode->i_extra_isize = cpu_to_le16(ei->i_extra_isize);
 }

 BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
 rc = ext4_handle_dirty_metadata(handle, ((void*)0), bh);
 if (!err)
  err = rc;
 ext4_clear_inode_state(inode, EXT4_STATE_NEW);

 ext4_update_inode_fsync_trans(handle, inode, need_datasync);
out_brelse:
 brelse(bh);
 ext4_std_error(inode->i_sb, err);
 return err;
}
