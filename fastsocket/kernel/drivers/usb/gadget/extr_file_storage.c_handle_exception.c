
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct lun {scalar_t__ info_valid; scalar_t__ sense_data_info; int unit_attention_data; int sense_data; scalar_t__ prevent_medium_removal; } ;
struct fsg_dev {scalar_t__ state; int intreq_busy; unsigned int exception_req_tag; int nluns; unsigned int ep0_req_tag; int lock; int ep0; int bulk_in; int atomic_bitflags; struct lun* luns; int new_config; struct fsg_buffhd* buffhds; struct fsg_buffhd* next_buffhd_to_drain; struct fsg_buffhd* next_buffhd_to_fill; int intr_in; scalar_t__ intr_in_enabled; int bulk_out; scalar_t__ bulk_out_enabled; scalar_t__ bulk_in_enabled; int intreq; } ;
struct fsg_buffhd {int state; scalar_t__ outreq_busy; scalar_t__ inreq_busy; int outreq; int inreq; } ;
typedef int siginfo_t ;
typedef enum fsg_state { ____Placeholder_fsg_state } fsg_state ;
struct TYPE_3__ {int blocked; } ;


 int BUF_STATE_EMPTY ;
 int DBG (struct fsg_dev*,char*) ;




 void* FSG_STATE_IDLE ;


 scalar_t__ FSG_STATE_STATUS_PHASE ;

 int IGNORE_BULK_OUT ;
 int NUM_BUFFERS ;
 int SIGUSR1 ;
 int SS_NO_SENSE ;
 TYPE_1__* current ;
 int dequeue_signal_lock (TYPE_1__*,int *,int *) ;
 int do_set_config (struct fsg_dev*,int ) ;
 int do_set_interface (struct fsg_dev*,int ) ;
 int ep0_queue (struct fsg_dev*) ;
 int fsg_set_halt (struct fsg_dev*,int ) ;
 int fsync_all (struct fsg_dev*) ;
 int raise_exception (struct fsg_dev*,scalar_t__) ;
 int send_status (struct fsg_dev*) ;
 scalar_t__ sleep_thread (struct fsg_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int transport_is_bbb () ;
 int transport_is_cbi () ;
 int usb_ep_clear_halt (int ) ;
 int usb_ep_dequeue (int ,int ) ;
 int usb_ep_fifo_flush (int ) ;

__attribute__((used)) static void handle_exception(struct fsg_dev *fsg)
{
 siginfo_t info;
 int sig;
 int i;
 int num_active;
 struct fsg_buffhd *bh;
 enum fsg_state old_state;
 u8 new_config;
 struct lun *curlun;
 unsigned int exception_req_tag;
 int rc;



 for (;;) {
  sig = dequeue_signal_lock(current, &current->blocked, &info);
  if (!sig)
   break;
  if (sig != SIGUSR1) {
   if (fsg->state < 131)
    DBG(fsg, "Main thread exiting on signal\n");
   raise_exception(fsg, 131);
  }
 }


 if (fsg->intreq_busy)
  usb_ep_dequeue(fsg->intr_in, fsg->intreq);
 for (i = 0; i < NUM_BUFFERS; ++i) {
  bh = &fsg->buffhds[i];
  if (bh->inreq_busy)
   usb_ep_dequeue(fsg->bulk_in, bh->inreq);
  if (bh->outreq_busy)
   usb_ep_dequeue(fsg->bulk_out, bh->outreq);
 }


 for (;;) {
  num_active = fsg->intreq_busy;
  for (i = 0; i < NUM_BUFFERS; ++i) {
   bh = &fsg->buffhds[i];
   num_active += bh->inreq_busy + bh->outreq_busy;
  }
  if (num_active == 0)
   break;
  if (sleep_thread(fsg))
   return;
 }


 if (fsg->bulk_in_enabled)
  usb_ep_fifo_flush(fsg->bulk_in);
 if (fsg->bulk_out_enabled)
  usb_ep_fifo_flush(fsg->bulk_out);
 if (fsg->intr_in_enabled)
  usb_ep_fifo_flush(fsg->intr_in);



 spin_lock_irq(&fsg->lock);

 for (i = 0; i < NUM_BUFFERS; ++i) {
  bh = &fsg->buffhds[i];
  bh->state = BUF_STATE_EMPTY;
 }
 fsg->next_buffhd_to_fill = fsg->next_buffhd_to_drain =
   &fsg->buffhds[0];

 exception_req_tag = fsg->exception_req_tag;
 new_config = fsg->new_config;
 old_state = fsg->state;

 if (old_state == 134)
  fsg->state = FSG_STATE_STATUS_PHASE;
 else {
  for (i = 0; i < fsg->nluns; ++i) {
   curlun = &fsg->luns[i];
   curlun->prevent_medium_removal = 0;
   curlun->sense_data = curlun->unit_attention_data =
     SS_NO_SENSE;
   curlun->sense_data_info = 0;
   curlun->info_valid = 0;
  }
  fsg->state = FSG_STATE_IDLE;
 }
 spin_unlock_irq(&fsg->lock);


 switch (old_state) {
 default:
  break;

 case 134:
  send_status(fsg);
  spin_lock_irq(&fsg->lock);
  if (fsg->state == FSG_STATE_STATUS_PHASE)
   fsg->state = FSG_STATE_IDLE;
  spin_unlock_irq(&fsg->lock);
  break;

 case 129:



  if (test_and_clear_bit(IGNORE_BULK_OUT, &fsg->atomic_bitflags))
   usb_ep_clear_halt(fsg->bulk_in);

  if (transport_is_bbb()) {
   if (fsg->ep0_req_tag == exception_req_tag)
    ep0_queue(fsg);

  } else if (transport_is_cbi())
   send_status(fsg);






  break;

 case 130:
  rc = do_set_interface(fsg, 0);
  if (fsg->ep0_req_tag != exception_req_tag)
   break;
  if (rc != 0)
   fsg_set_halt(fsg, fsg->ep0);
  else
   ep0_queue(fsg);
  break;

 case 133:
  rc = do_set_config(fsg, new_config);
  if (fsg->ep0_req_tag != exception_req_tag)
   break;
  if (rc != 0)
   fsg_set_halt(fsg, fsg->ep0);
  else
   ep0_queue(fsg);
  break;

 case 132:
  fsync_all(fsg);
  do_set_config(fsg, 0);
  break;

 case 131:
 case 128:
  do_set_config(fsg, 0);
  spin_lock_irq(&fsg->lock);
  fsg->state = 128;
  spin_unlock_irq(&fsg->lock);
  break;
 }
}
