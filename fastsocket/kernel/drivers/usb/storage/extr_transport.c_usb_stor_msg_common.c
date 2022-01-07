
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct us_data {scalar_t__ iobuf; TYPE_1__* current_urb; int dflags; int cr_dma; int iobuf_dma; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int status; scalar_t__ transfer_buffer; int setup_dma; int transfer_dma; int transfer_flags; scalar_t__ error_count; scalar_t__ actual_length; struct completion* context; } ;


 int EIO ;
 int GFP_NOIO ;
 int MAX_SCHEDULE_TIMEOUT ;
 int URB_NO_SETUP_DMA_MAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int US_DEBUGP (char*,...) ;
 int US_FLIDX_ABORTING ;
 int US_FLIDX_URB_ACTIVE ;
 int clear_bit (int ,int *) ;
 int init_completion (struct completion*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_kill_urb (TYPE_1__*) ;
 int usb_submit_urb (TYPE_1__*,int ) ;
 int usb_unlink_urb (TYPE_1__*) ;
 long wait_for_completion_interruptible_timeout (struct completion*,int ) ;

__attribute__((used)) static int usb_stor_msg_common(struct us_data *us, int timeout)
{
 struct completion urb_done;
 long timeleft;
 int status;


 if (test_bit(US_FLIDX_ABORTING, &us->dflags))
  return -EIO;


 init_completion(&urb_done);


 us->current_urb->context = &urb_done;
 us->current_urb->actual_length = 0;
 us->current_urb->error_count = 0;
 us->current_urb->status = 0;





 us->current_urb->transfer_flags = URB_NO_SETUP_DMA_MAP;
 if (us->current_urb->transfer_buffer == us->iobuf)
  us->current_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 us->current_urb->transfer_dma = us->iobuf_dma;
 us->current_urb->setup_dma = us->cr_dma;


 status = usb_submit_urb(us->current_urb, GFP_NOIO);
 if (status) {

  return status;
 }



 set_bit(US_FLIDX_URB_ACTIVE, &us->dflags);


 if (test_bit(US_FLIDX_ABORTING, &us->dflags)) {


  if (test_and_clear_bit(US_FLIDX_URB_ACTIVE, &us->dflags)) {
   US_DEBUGP("-- cancelling URB\n");
   usb_unlink_urb(us->current_urb);
  }
 }


 timeleft = wait_for_completion_interruptible_timeout(
   &urb_done, timeout ? : MAX_SCHEDULE_TIMEOUT);

 clear_bit(US_FLIDX_URB_ACTIVE, &us->dflags);

 if (timeleft <= 0) {
  US_DEBUGP("%s -- cancelling URB\n",
     timeleft == 0 ? "Timeout" : "Signal");
  usb_kill_urb(us->current_urb);
 }


 return us->current_urb->status;
}
