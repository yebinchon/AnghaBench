
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int * ocfs2_quota_wq ;

void ocfs2_quota_shutdown(void)
{
 if (ocfs2_quota_wq) {
  flush_workqueue(ocfs2_quota_wq);
  destroy_workqueue(ocfs2_quota_wq);
  ocfs2_quota_wq = ((void*)0);
 }
}
