
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {scalar_t__ set_drp_ie_pending; int rsvs_lock; int rsv_update_work; } ;


 int delayed_work_pending (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int uwb_rsv_queue_update (struct uwb_rc*) ;

void uwb_rsv_sched_update(struct uwb_rc *rc)
{
 spin_lock_bh(&rc->rsvs_lock);
 if (!delayed_work_pending(&rc->rsv_update_work)) {
  if (rc->set_drp_ie_pending > 0) {
   rc->set_drp_ie_pending++;
   goto unlock;
  }
  uwb_rsv_queue_update(rc);
 }
unlock:
 spin_unlock_bh(&rc->rsvs_lock);
}
