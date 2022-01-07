
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct inode* osb_tl_inode; int osb_tl_bh; int osb_truncate_log_wq; } ;
struct inode {int dummy; } ;


 int brelse (int ) ;
 int cancel_delayed_work (int *) ;
 int flush_workqueue (int ) ;
 int iput (struct inode*) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 int ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int ocfs2_wq ;

void ocfs2_truncate_log_shutdown(struct ocfs2_super *osb)
{
 int status;
 struct inode *tl_inode = osb->osb_tl_inode;

 mlog_entry_void();

 if (tl_inode) {
  cancel_delayed_work(&osb->osb_truncate_log_wq);
  flush_workqueue(ocfs2_wq);

  status = ocfs2_flush_truncate_log(osb);
  if (status < 0)
   mlog_errno(status);

  brelse(osb->osb_tl_bh);
  iput(osb->osb_tl_inode);
 }

 mlog_exit_void();
}
