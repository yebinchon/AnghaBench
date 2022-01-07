
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dc_event; int dc_task_lock; int dc_wake_sequence; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void ocfs2_wake_downconvert_thread(struct ocfs2_super *osb)
{
 spin_lock(&osb->dc_task_lock);


 osb->dc_wake_sequence++;
 spin_unlock(&osb->dc_task_lock);
 wake_up(&osb->dc_event);
}
