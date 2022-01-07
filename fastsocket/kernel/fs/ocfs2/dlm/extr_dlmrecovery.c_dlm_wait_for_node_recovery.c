
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_ctxt {int dlm_reco_thread_wq; int name; } ;


 int dlm_is_node_recovered (struct dlm_ctxt*,int ) ;
 int mlog (int ,char*,int ,int,...) ;
 int msecs_to_jiffies (int) ;
 int wait_event (int ,int ) ;
 int wait_event_timeout (int ,int ,int ) ;

int dlm_wait_for_node_recovery(struct dlm_ctxt *dlm, u8 node, int timeout)
{
 if (timeout) {
  mlog(0, "%s: waiting %dms for notification of "
       "recovery of node %u\n", dlm->name, timeout, node);
  wait_event_timeout(dlm->dlm_reco_thread_wq,
      dlm_is_node_recovered(dlm, node),
      msecs_to_jiffies(timeout));
 } else {
  mlog(0, "%s: waiting indefinitely for notification "
       "of recovery of node %u\n", dlm->name, node);
  wait_event(dlm->dlm_reco_thread_wq,
      dlm_is_node_recovered(dlm, node));
 }

 return 0;
}
