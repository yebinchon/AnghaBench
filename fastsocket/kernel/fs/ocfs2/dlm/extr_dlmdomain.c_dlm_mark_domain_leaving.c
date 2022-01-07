
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {scalar_t__ joining_node; int spinlock; int dlm_state; int dlm_join_events; } ;


 int DLM_CTXT_LEAVING ;
 scalar_t__ DLM_LOCK_RES_OWNER_UNKNOWN ;
 int dlm_domain_lock ;
 int dlm_no_joining_node (struct dlm_ctxt*) ;
 int mlog (int ,char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void dlm_mark_domain_leaving(struct dlm_ctxt *dlm)
{


again:
 spin_lock(&dlm_domain_lock);
 spin_lock(&dlm->spinlock);

 if (dlm->joining_node != DLM_LOCK_RES_OWNER_UNKNOWN) {
  mlog(0, "Node %d is joining, we wait on it.\n",
     dlm->joining_node);
  spin_unlock(&dlm->spinlock);
  spin_unlock(&dlm_domain_lock);

  wait_event(dlm->dlm_join_events, dlm_no_joining_node(dlm));
  goto again;
 }

 dlm->dlm_state = DLM_CTXT_LEAVING;
 spin_unlock(&dlm->spinlock);
 spin_unlock(&dlm_domain_lock);
}
