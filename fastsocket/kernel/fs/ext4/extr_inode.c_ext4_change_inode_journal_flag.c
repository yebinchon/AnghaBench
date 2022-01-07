
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int journal_t ;
typedef int handle_t ;


 int EROFS ;
 int EXT4_INODE_JOURNAL_DATA ;
 int * EXT4_JOURNAL (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_handle_sync (int *) ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_set_aops (struct inode*) ;
 int ext4_set_inode_flag (struct inode*,int ) ;
 int ext4_std_error (int ,int) ;
 scalar_t__ is_journal_aborted (int *) ;
 int jbd2_journal_flush (int *) ;
 int jbd2_journal_lock_updates (int *) ;
 int jbd2_journal_unlock_updates (int *) ;

int ext4_change_inode_journal_flag(struct inode *inode, int val)
{
 journal_t *journal;
 handle_t *handle;
 int err;
 journal = EXT4_JOURNAL(inode);
 if (!journal)
  return 0;
 if (is_journal_aborted(journal))
  return -EROFS;

 jbd2_journal_lock_updates(journal);
 jbd2_journal_flush(journal);
 if (val)
  ext4_set_inode_flag(inode, EXT4_INODE_JOURNAL_DATA);
 else
  ext4_clear_inode_flag(inode, EXT4_INODE_JOURNAL_DATA);
 ext4_set_aops(inode);

 jbd2_journal_unlock_updates(journal);



 handle = ext4_journal_start(inode, 1);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 err = ext4_mark_inode_dirty(handle, inode);
 ext4_handle_sync(handle);
 ext4_journal_stop(handle);
 ext4_std_error(inode->i_sb, err);

 return err;
}
