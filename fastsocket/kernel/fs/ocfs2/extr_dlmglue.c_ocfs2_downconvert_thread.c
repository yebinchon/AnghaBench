
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int * dc_task; int dc_event; } ;


 scalar_t__ kthread_should_stop () ;
 int mlog (int ,char*) ;
 int ocfs2_downconvert_thread_do_work (struct ocfs2_super*) ;
 scalar_t__ ocfs2_downconvert_thread_lists_empty (struct ocfs2_super*) ;
 scalar_t__ ocfs2_downconvert_thread_should_wake (struct ocfs2_super*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int ocfs2_downconvert_thread(void *arg)
{
 int status = 0;
 struct ocfs2_super *osb = arg;



 while (!(kthread_should_stop() &&
  ocfs2_downconvert_thread_lists_empty(osb))) {

  wait_event_interruptible(osb->dc_event,
      ocfs2_downconvert_thread_should_wake(osb) ||
      kthread_should_stop());

  mlog(0, "downconvert_thread: awoken\n");

  ocfs2_downconvert_thread_do_work(osb);
 }

 osb->dc_task = ((void*)0);
 return status;
}
