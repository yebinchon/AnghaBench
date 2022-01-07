
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {TYPE_1__* journal; int sb; } ;
typedef int journal_t ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ j_state; int j_num_trans; int j_trans_barrier; int * j_journal; } ;


 int BUG_ON (int) ;
 int EROFS ;
 int * ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ OCFS2_JOURNAL_FREE ;
 int PTR_ERR (int *) ;
 int atomic_inc (int *) ;
 int down_read (int *) ;
 scalar_t__ is_journal_aborted (int *) ;
 int * jbd2_journal_start (int *,int) ;
 scalar_t__ journal_current_handle () ;
 int mlog_errno (int ) ;
 int ocfs2_abort (int ,char*) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;
 int up_read (int *) ;

handle_t *ocfs2_start_trans(struct ocfs2_super *osb, int max_buffs)
{
 journal_t *journal = osb->journal->j_journal;
 handle_t *handle;

 BUG_ON(!osb || !osb->journal->j_journal);

 if (ocfs2_is_hard_readonly(osb))
  return ERR_PTR(-EROFS);

 BUG_ON(osb->journal->j_state == OCFS2_JOURNAL_FREE);
 BUG_ON(max_buffs <= 0);


 if (journal_current_handle())
  return jbd2_journal_start(journal, max_buffs);

 down_read(&osb->journal->j_trans_barrier);

 handle = jbd2_journal_start(journal, max_buffs);
 if (IS_ERR(handle)) {
  up_read(&osb->journal->j_trans_barrier);

  mlog_errno(PTR_ERR(handle));

  if (is_journal_aborted(journal)) {
   ocfs2_abort(osb->sb, "Detected aborted journal");
   handle = ERR_PTR(-EROFS);
  }
 } else {
  if (!ocfs2_mount_local(osb))
   atomic_inc(&(osb->journal->j_num_trans));
 }

 return handle;
}
