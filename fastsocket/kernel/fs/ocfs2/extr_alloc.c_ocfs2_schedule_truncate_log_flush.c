
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_truncate_log_wq; scalar_t__ osb_tl_inode; } ;


 int OCFS2_TRUNCATE_LOG_FLUSH_INTERVAL ;
 int cancel_delayed_work (int *) ;
 int ocfs2_wq ;
 int queue_delayed_work (int ,int *,int ) ;

void ocfs2_schedule_truncate_log_flush(struct ocfs2_super *osb,
           int cancel)
{
 if (osb->osb_tl_inode) {


  if (cancel)
   cancel_delayed_work(&osb->osb_truncate_log_wq);

  queue_delayed_work(ocfs2_wq, &osb->osb_truncate_log_wq,
       OCFS2_TRUNCATE_LOG_FLUSH_INTERVAL);
 }
}
