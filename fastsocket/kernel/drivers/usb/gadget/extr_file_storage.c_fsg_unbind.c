
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int buf; } ;
struct usb_gadget {int dummy; } ;
struct lun {scalar_t__ registered; int dev; } ;
struct fsg_dev {int nluns; scalar_t__ state; int ep0; TYPE_1__* buffhds; int thread_notifier; struct lun* luns; int atomic_bitflags; struct usb_request* ep0req; } ;
struct TYPE_2__ {int buf; } ;


 int DBG (struct fsg_dev*,char*) ;
 int FSG_STATE_EXIT ;
 scalar_t__ FSG_STATE_TERMINATED ;
 int NUM_BUFFERS ;
 int REGISTERED ;
 int clear_bit (int ,int *) ;
 int close_backing_file (struct lun*) ;
 int complete (int *) ;
 int dev_attr_file ;
 int dev_attr_ro ;
 int device_remove_file (int *,int *) ;
 int device_unregister (int *) ;
 struct fsg_dev* get_gadget_data (struct usb_gadget*) ;
 int kfree (int ) ;
 int raise_exception (struct fsg_dev*,int ) ;
 int set_gadget_data (struct usb_gadget*,int *) ;
 int usb_ep_free_request (int ,struct usb_request*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void fsg_unbind(struct usb_gadget *gadget)
{
 struct fsg_dev *fsg = get_gadget_data(gadget);
 int i;
 struct lun *curlun;
 struct usb_request *req = fsg->ep0req;

 DBG(fsg, "unbind\n");
 clear_bit(REGISTERED, &fsg->atomic_bitflags);


 for (i = 0; i < fsg->nluns; ++i) {
  curlun = &fsg->luns[i];
  if (curlun->registered) {
   device_remove_file(&curlun->dev, &dev_attr_ro);
   device_remove_file(&curlun->dev, &dev_attr_file);
   close_backing_file(curlun);
   device_unregister(&curlun->dev);
   curlun->registered = 0;
  }
 }


 if (fsg->state != FSG_STATE_TERMINATED) {
  raise_exception(fsg, FSG_STATE_EXIT);
  wait_for_completion(&fsg->thread_notifier);


  complete(&fsg->thread_notifier);
 }


 for (i = 0; i < NUM_BUFFERS; ++i)
  kfree(fsg->buffhds[i].buf);


 if (req) {
  kfree(req->buf);
  usb_ep_free_request(fsg->ep0, req);
 }

 set_gadget_data(gadget, ((void*)0));
}
