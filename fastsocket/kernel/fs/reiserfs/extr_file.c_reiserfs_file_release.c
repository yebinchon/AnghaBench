
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct inode {int i_sb; int i_mutex; int i_count; int i_ino; int i_mode; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_flags; scalar_t__ i_prealloc_count; int i_mmap; } ;


 int BUG_ON (int) ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int S_ISREG (int ) ;
 int atomic_read (int *) ;
 int i_ever_mapped ;
 int i_pack_on_close_mask ;
 int igrab (struct inode*) ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_join_abort (struct reiserfs_transaction_handle*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reiserfs_discard_prealloc (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_truncate_file (struct inode*,int ) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_warning (int ,char*,char*,int ) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 scalar_t__ tail_has_to_be_packed (struct inode*) ;

__attribute__((used)) static int reiserfs_file_release(struct inode *inode, struct file *filp)
{

 struct reiserfs_transaction_handle th;
 int err;
 int jbegin_failure = 0;

 BUG_ON(!S_ISREG(inode->i_mode));


 if ((atomic_read(&inode->i_count) > 1 ||
      !(REISERFS_I(inode)->i_flags & i_pack_on_close_mask) ||
      !tail_has_to_be_packed(inode)) &&
     REISERFS_I(inode)->i_prealloc_count <= 0) {
  return 0;
 }

 mutex_lock(&inode->i_mutex);

 mutex_lock(&(REISERFS_I(inode)->i_mmap));
 if (REISERFS_I(inode)->i_flags & i_ever_mapped)
  REISERFS_I(inode)->i_flags &= ~i_pack_on_close_mask;

 reiserfs_write_lock(inode->i_sb);





 err = journal_begin(&th, inode->i_sb, 1);
 if (err) {




  jbegin_failure = err;
  err = journal_join_abort(&th, inode->i_sb, 1);

  if (err) {







   igrab(inode);
   reiserfs_warning(inode->i_sb, "clm-9001",
      "pinning inode %lu because the "
      "preallocation can't be freed",
      inode->i_ino);
   goto out;
  }
 }
 reiserfs_update_inode_transaction(inode);




 err = journal_end(&th, inode->i_sb, 1);


 if (!err)
  err = jbegin_failure;

 if (!err && atomic_read(&inode->i_count) <= 1 &&
     (REISERFS_I(inode)->i_flags & i_pack_on_close_mask) &&
     tail_has_to_be_packed(inode)) {




  err = reiserfs_truncate_file(inode, 0);
 }
      out:
 mutex_unlock(&(REISERFS_I(inode)->i_mmap));
 mutex_unlock(&inode->i_mutex);
 reiserfs_write_unlock(inode->i_sb);
 return err;
}
