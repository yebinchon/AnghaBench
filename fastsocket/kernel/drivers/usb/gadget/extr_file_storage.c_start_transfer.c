
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ length; int buf; } ;
struct usb_ep {int name; } ;
struct fsg_dev {int lock; struct usb_ep* intr_in; struct usb_ep* bulk_in; } ;
typedef enum fsg_buffer_state { ____Placeholder_fsg_buffer_state } fsg_buffer_state ;


 int BUF_STATE_BUSY ;
 int BUF_STATE_EMPTY ;
 int EOPNOTSUPP ;
 int ESHUTDOWN ;
 int GFP_KERNEL ;
 int WARNING (struct fsg_dev*,char*,int ,int) ;
 int dump_msg (struct fsg_dev*,char*,int ,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_ep_queue (struct usb_ep*,struct usb_request*,int ) ;

__attribute__((used)) static void start_transfer(struct fsg_dev *fsg, struct usb_ep *ep,
  struct usb_request *req, int *pbusy,
  enum fsg_buffer_state *state)
{
 int rc;

 if (ep == fsg->bulk_in)
  dump_msg(fsg, "bulk-in", req->buf, req->length);
 else if (ep == fsg->intr_in)
  dump_msg(fsg, "intr-in", req->buf, req->length);

 spin_lock_irq(&fsg->lock);
 *pbusy = 1;
 *state = BUF_STATE_BUSY;
 spin_unlock_irq(&fsg->lock);
 rc = usb_ep_queue(ep, req, GFP_KERNEL);
 if (rc != 0) {
  *pbusy = 0;
  *state = BUF_STATE_EMPTY;





  if (rc != -ESHUTDOWN && !(rc == -EOPNOTSUPP &&
      req->length == 0))
   WARNING(fsg, "error in submission: %s --> %d\n",
     ep->name, rc);
 }
}
