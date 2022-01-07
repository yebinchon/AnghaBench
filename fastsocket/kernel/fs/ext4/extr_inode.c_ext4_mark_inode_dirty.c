
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; } ;
struct ext4_sb_info {scalar_t__ s_want_extra_isize; TYPE_1__* s_es; } ;
struct ext4_iloc {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ i_extra_isize; } ;
struct TYPE_3__ {int s_mnt_count; } ;


 int EXT4_DATA_TRANS_BLOCKS (int ) ;
 TYPE_2__* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int EXT4_STATE_NO_EXPAND ;
 int ext4_expand_extra_isize (struct inode*,scalar_t__,struct ext4_iloc,int *) ;
 scalar_t__ ext4_handle_valid (int *) ;
 int ext4_mark_iloc_dirty (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_reserve_inode_write (int *,struct inode*,struct ext4_iloc*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_test_inode_state (struct inode*,int ) ;
 int ext4_warning (int ,char*,int ) ;
 scalar_t__ jbd2_journal_extend (int *,int ) ;
 unsigned int le16_to_cpu (int ) ;
 int might_sleep () ;

int ext4_mark_inode_dirty(handle_t *handle, struct inode *inode)
{
 struct ext4_iloc iloc;
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 static unsigned int mnt_count;
 int err, ret;

 might_sleep();
 err = ext4_reserve_inode_write(handle, inode, &iloc);
 if (ext4_handle_valid(handle) &&
     EXT4_I(inode)->i_extra_isize < sbi->s_want_extra_isize &&
     !ext4_test_inode_state(inode, EXT4_STATE_NO_EXPAND)) {







  if ((jbd2_journal_extend(handle,
        EXT4_DATA_TRANS_BLOCKS(inode->i_sb))) == 0) {
   ret = ext4_expand_extra_isize(inode,
            sbi->s_want_extra_isize,
            iloc, handle);
   if (ret) {
    ext4_set_inode_state(inode,
           EXT4_STATE_NO_EXPAND);
    if (mnt_count !=
     le16_to_cpu(sbi->s_es->s_mnt_count)) {
     ext4_warning(inode->i_sb,
     "Unable to expand inode %lu. Delete"
     " some EAs or run e2fsck.",
     inode->i_ino);
     mnt_count =
       le16_to_cpu(sbi->s_es->s_mnt_count);
    }
   }
  }
 }
 if (!err)
  err = ext4_mark_iloc_dirty(handle, inode, &iloc);
 return err;
}
