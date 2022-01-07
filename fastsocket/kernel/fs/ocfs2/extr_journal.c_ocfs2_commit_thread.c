
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int checkpoint_event; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int j_num_trans; } ;


 int ML_KTHREAD ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ kthread_should_stop () ;
 int mlog (int ,char*,scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_commit_cache (struct ocfs2_super*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int ocfs2_commit_thread(void *arg)
{
 int status;
 struct ocfs2_super *osb = arg;
 struct ocfs2_journal *journal = osb->journal;





 while (!(kthread_should_stop() &&
   atomic_read(&journal->j_num_trans) == 0)) {

  wait_event_interruptible(osb->checkpoint_event,
      atomic_read(&journal->j_num_trans)
      || kthread_should_stop());

  status = ocfs2_commit_cache(osb);
  if (status < 0)
   mlog_errno(status);

  if (kthread_should_stop() && atomic_read(&journal->j_num_trans)){
   mlog(ML_KTHREAD,
        "commit_thread: %u transactions pending on "
        "shutdown\n",
        atomic_read(&journal->j_num_trans));
  }
 }

 return 0;
}
