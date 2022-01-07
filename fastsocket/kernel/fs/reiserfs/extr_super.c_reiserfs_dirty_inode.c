
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_ino; } ;
struct TYPE_6__ {int s_flags; } ;


 int MS_RDONLY ;
 int journal_begin (struct reiserfs_transaction_handle*,TYPE_1__*,int) ;
 int journal_end (struct reiserfs_transaction_handle*,TYPE_1__*,int) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_warning (TYPE_1__*,char*,char*,int ) ;
 int reiserfs_write_lock (TYPE_1__*) ;
 int reiserfs_write_unlock (TYPE_1__*) ;

__attribute__((used)) static void reiserfs_dirty_inode(struct inode *inode)
{
 struct reiserfs_transaction_handle th;

 int err = 0;
 if (inode->i_sb->s_flags & MS_RDONLY) {
  reiserfs_warning(inode->i_sb, "clm-6006",
     "writing inode %lu on readonly FS",
     inode->i_ino);
  return;
 }
 reiserfs_write_lock(inode->i_sb);




 err = journal_begin(&th, inode->i_sb, 1);
 if (err) {
  reiserfs_write_unlock(inode->i_sb);
  return;
 }
 reiserfs_update_sd(&th, inode);
 journal_end(&th, inode->i_sb, 1);
 reiserfs_write_unlock(inode->i_sb);
}
