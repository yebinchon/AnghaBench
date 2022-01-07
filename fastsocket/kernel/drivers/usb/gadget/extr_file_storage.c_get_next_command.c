
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_dev {scalar_t__ cbbuf_cmnd_size; scalar_t__ cmnd_size; int lock; int cbbuf_cmnd; int cmnd; int data_dir; int intreq; int intr_in; scalar_t__ intreq_busy; int bulk_out; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {scalar_t__ state; int outreq_busy; TYPE_1__* outreq; } ;
struct TYPE_2__ {int short_not_ok; } ;


 scalar_t__ BUF_STATE_EMPTY ;
 scalar_t__ BUF_STATE_FULL ;
 int DATA_DIR_UNKNOWN ;
 int USB_BULK_CB_WRAP_LEN ;
 int memcpy (int ,int ,scalar_t__) ;
 int received_cbw (struct fsg_dev*,struct fsg_buffhd*) ;
 int set_bulk_out_req_length (struct fsg_dev*,struct fsg_buffhd*,int ) ;
 int sleep_thread (struct fsg_dev*) ;
 int smp_rmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int start_transfer (struct fsg_dev*,int ,TYPE_1__*,int *,scalar_t__*) ;
 scalar_t__ transport_is_bbb () ;
 int usb_ep_dequeue (int ,int ) ;

__attribute__((used)) static int get_next_command(struct fsg_dev *fsg)
{
 struct fsg_buffhd *bh;
 int rc = 0;

 if (transport_is_bbb()) {


  bh = fsg->next_buffhd_to_fill;
  while (bh->state != BUF_STATE_EMPTY) {
   rc = sleep_thread(fsg);
   if (rc)
    return rc;
  }


  set_bulk_out_req_length(fsg, bh, USB_BULK_CB_WRAP_LEN);
  bh->outreq->short_not_ok = 1;
  start_transfer(fsg, fsg->bulk_out, bh->outreq,
    &bh->outreq_busy, &bh->state);






  while (bh->state != BUF_STATE_FULL) {
   rc = sleep_thread(fsg);
   if (rc)
    return rc;
  }
  smp_rmb();
  rc = received_cbw(fsg, bh);
  bh->state = BUF_STATE_EMPTY;

 } else {


  while (fsg->cbbuf_cmnd_size == 0) {
   rc = sleep_thread(fsg);
   if (rc)
    return rc;
  }




  if (fsg->intreq_busy)
   usb_ep_dequeue(fsg->intr_in, fsg->intreq);


  fsg->data_dir = DATA_DIR_UNKNOWN;
  spin_lock_irq(&fsg->lock);
  fsg->cmnd_size = fsg->cbbuf_cmnd_size;
  memcpy(fsg->cmnd, fsg->cbbuf_cmnd, fsg->cmnd_size);
  fsg->cbbuf_cmnd_size = 0;
  spin_unlock_irq(&fsg->lock);
 }
 return rc;
}
