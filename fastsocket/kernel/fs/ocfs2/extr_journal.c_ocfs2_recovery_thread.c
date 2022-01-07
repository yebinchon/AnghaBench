
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int recovery_event; int recovery_lock; int * recovery_thread_task; scalar_t__ disable_recovery; int node_num; } ;


 scalar_t__ IS_ERR (int *) ;
 scalar_t__ PTR_ERR (int *) ;
 int __ocfs2_recovery_thread ;
 int * kthread_run (int ,struct ocfs2_super*,char*) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,int,int ) ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ocfs2_recovery_map_set (struct ocfs2_super*,int) ;
 int wake_up (int *) ;

void ocfs2_recovery_thread(struct ocfs2_super *osb, int node_num)
{
 mlog_entry("(node_num=%d, osb->node_num = %d)\n",
     node_num, osb->node_num);

 mutex_lock(&osb->recovery_lock);
 if (osb->disable_recovery)
  goto out;



 if (ocfs2_recovery_map_set(osb, node_num))
  mlog(0, "node %d already in recovery map.\n", node_num);

 mlog(0, "starting recovery thread...\n");

 if (osb->recovery_thread_task)
  goto out;

 osb->recovery_thread_task = kthread_run(__ocfs2_recovery_thread, osb,
       "ocfs2rec");
 if (IS_ERR(osb->recovery_thread_task)) {
  mlog_errno((int)PTR_ERR(osb->recovery_thread_task));
  osb->recovery_thread_task = ((void*)0);
 }

out:
 mutex_unlock(&osb->recovery_lock);
 wake_up(&osb->recovery_event);

 mlog_exit_void();
}
