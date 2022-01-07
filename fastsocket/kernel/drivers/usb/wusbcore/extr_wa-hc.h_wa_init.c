
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int xfer_id_count; int xfer_work; int xfer_list_lock; int xfer_delayed_list; int xfer_list; int dti_edc; int notifs_queued; int nep_edc; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int) ;
 int edc_init (int *) ;
 int spin_lock_init (int *) ;
 int wa_rpipe_init (struct wahc*) ;
 int wa_urb_enqueue_run ;

__attribute__((used)) static inline void wa_init(struct wahc *wa)
{
 edc_init(&wa->nep_edc);
 atomic_set(&wa->notifs_queued, 0);
 wa_rpipe_init(wa);
 edc_init(&wa->dti_edc);
 INIT_LIST_HEAD(&wa->xfer_list);
 INIT_LIST_HEAD(&wa->xfer_delayed_list);
 spin_lock_init(&wa->xfer_list_lock);
 INIT_WORK(&wa->xfer_work, wa_urb_enqueue_run);
 atomic_set(&wa->xfer_id_count, 1);
}
