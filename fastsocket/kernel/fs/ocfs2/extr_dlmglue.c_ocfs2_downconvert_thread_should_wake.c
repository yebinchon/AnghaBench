
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {scalar_t__ dc_work_sequence; scalar_t__ dc_wake_sequence; int dc_task_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_downconvert_thread_should_wake(struct ocfs2_super *osb)
{
 int should_wake = 0;

 spin_lock(&osb->dc_task_lock);
 if (osb->dc_work_sequence != osb->dc_wake_sequence)
  should_wake = 1;
 spin_unlock(&osb->dc_task_lock);

 return should_wake;
}
