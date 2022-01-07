
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int disable_recovery; struct ocfs2_recovery_map* recovery_map; int recovery_event; int recovery_lock; } ;
struct ocfs2_recovery_map {int dummy; } ;


 int flush_workqueue (int ) ;
 int kfree (struct ocfs2_recovery_map*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_recovery_thread_running (struct ocfs2_super*) ;
 int ocfs2_wq ;
 int wait_event (int ,int) ;

void ocfs2_recovery_exit(struct ocfs2_super *osb)
{
 struct ocfs2_recovery_map *rm;



 mutex_lock(&osb->recovery_lock);
 osb->disable_recovery = 1;
 mutex_unlock(&osb->recovery_lock);
 wait_event(osb->recovery_event, !ocfs2_recovery_thread_running(osb));




 flush_workqueue(ocfs2_wq);





 rm = osb->recovery_map;


 kfree(rm);
}
