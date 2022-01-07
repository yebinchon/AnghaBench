
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct inode {int i_sb; } ;
typedef int journal_t ;
struct TYPE_8__ {int h_sync; } ;
typedef TYPE_1__ handle_t ;
struct TYPE_9__ {int i_flags; } ;


 int EROFS ;
 TYPE_7__* EXT3_I (struct inode*) ;
 int * EXT3_JOURNAL (struct inode*) ;
 int EXT3_JOURNAL_DATA_FL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 TYPE_1__* ext3_journal_start (struct inode*,int) ;
 int ext3_journal_stop (TYPE_1__*) ;
 int ext3_mark_inode_dirty (TYPE_1__*,struct inode*) ;
 int ext3_set_aops (struct inode*) ;
 int ext3_std_error (int ,int) ;
 scalar_t__ is_journal_aborted (int *) ;
 int journal_flush (int *) ;
 int journal_lock_updates (int *) ;
 int journal_unlock_updates (int *) ;

int ext3_change_inode_journal_flag(struct inode *inode, int val)
{
 journal_t *journal;
 handle_t *handle;
 int err;
 journal = EXT3_JOURNAL(inode);
 if (is_journal_aborted(journal))
  return -EROFS;

 journal_lock_updates(journal);
 journal_flush(journal);
 if (val)
  EXT3_I(inode)->i_flags |= EXT3_JOURNAL_DATA_FL;
 else
  EXT3_I(inode)->i_flags &= ~EXT3_JOURNAL_DATA_FL;
 ext3_set_aops(inode);

 journal_unlock_updates(journal);



 handle = ext3_journal_start(inode, 1);
 if (IS_ERR(handle))
  return PTR_ERR(handle);

 err = ext3_mark_inode_dirty(handle, inode);
 handle->h_sync = 1;
 ext3_journal_stop(handle);
 ext3_std_error(inode->i_sb, err);

 return err;
}
