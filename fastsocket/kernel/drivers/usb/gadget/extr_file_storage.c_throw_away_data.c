
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fsg_dev {scalar_t__ usb_amount_left; struct fsg_buffhd* next_buffhd_to_fill; int bulk_out; struct fsg_buffhd* next_buffhd_to_drain; } ;
struct fsg_buffhd {scalar_t__ state; scalar_t__ bulk_out_intended_length; struct fsg_buffhd* next; int outreq_busy; TYPE_1__* outreq; } ;
struct TYPE_4__ {scalar_t__ buflen; } ;
struct TYPE_3__ {scalar_t__ actual; scalar_t__ length; scalar_t__ status; int short_not_ok; } ;


 scalar_t__ BUF_STATE_EMPTY ;
 scalar_t__ BUF_STATE_FULL ;
 int EINTR ;
 int FSG_STATE_ABORT_BULK_OUT ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 TYPE_2__ mod_data ;
 int raise_exception (struct fsg_dev*,int ) ;
 int sleep_thread (struct fsg_dev*) ;
 int smp_rmb () ;
 int start_transfer (struct fsg_dev*,int ,TYPE_1__*,int *,scalar_t__*) ;

__attribute__((used)) static int throw_away_data(struct fsg_dev *fsg)
{
 struct fsg_buffhd *bh;
 u32 amount;
 int rc;

 while ((bh = fsg->next_buffhd_to_drain)->state != BUF_STATE_EMPTY ||
   fsg->usb_amount_left > 0) {


  if (bh->state == BUF_STATE_FULL) {
   smp_rmb();
   bh->state = BUF_STATE_EMPTY;
   fsg->next_buffhd_to_drain = bh->next;


   if (bh->outreq->actual != bh->outreq->length ||
     bh->outreq->status != 0) {
    raise_exception(fsg, FSG_STATE_ABORT_BULK_OUT);
    return -EINTR;
   }
   continue;
  }


  bh = fsg->next_buffhd_to_fill;
  if (bh->state == BUF_STATE_EMPTY && fsg->usb_amount_left > 0) {
   amount = min(fsg->usb_amount_left,
     (u32) mod_data.buflen);



   bh->outreq->length = bh->bulk_out_intended_length =
     amount;
   bh->outreq->short_not_ok = 1;
   start_transfer(fsg, fsg->bulk_out, bh->outreq,
     &bh->outreq_busy, &bh->state);
   fsg->next_buffhd_to_fill = bh->next;
   fsg->usb_amount_left -= amount;
   continue;
  }


  rc = sleep_thread(fsg);
  if (rc)
   return rc;
 }
 return 0;
}
