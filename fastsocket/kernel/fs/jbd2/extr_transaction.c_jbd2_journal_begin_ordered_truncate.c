
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int transaction_t ;
struct jbd2_inode {TYPE_1__* i_vfs_inode; int * i_transaction; } ;
typedef int loff_t ;
struct TYPE_6__ {int j_list_lock; int j_state_lock; int * j_committing_transaction; } ;
typedef TYPE_2__ journal_t ;
struct TYPE_5__ {int i_mapping; } ;


 int LLONG_MAX ;
 int filemap_fdatawrite_range (int ,int ,int ) ;
 int jbd2_journal_abort (TYPE_2__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jbd2_journal_begin_ordered_truncate(journal_t *journal,
     struct jbd2_inode *jinode,
     loff_t new_size)
{
 transaction_t *inode_trans, *commit_trans;
 int ret = 0;


 if (!jinode->i_transaction)
  goto out;



 spin_lock(&journal->j_state_lock);
 commit_trans = journal->j_committing_transaction;
 spin_unlock(&journal->j_state_lock);
 spin_lock(&journal->j_list_lock);
 inode_trans = jinode->i_transaction;
 spin_unlock(&journal->j_list_lock);
 if (inode_trans == commit_trans) {
  ret = filemap_fdatawrite_range(jinode->i_vfs_inode->i_mapping,
   new_size, LLONG_MAX);
  if (ret)
   jbd2_journal_abort(journal, ret);
 }
out:
 return ret;
}
