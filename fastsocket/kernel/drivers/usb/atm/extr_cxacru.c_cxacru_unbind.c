
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct cxacru_data {scalar_t__ poll_state; scalar_t__ rcv_buf; scalar_t__ snd_buf; int rcv_urb; int snd_urb; int poll_work; int poll_state_serialize; } ;


 int BUG_ON (int) ;
 scalar_t__ CXPOLL_SHUTDOWN ;
 scalar_t__ CXPOLL_STOPPED ;
 int cancel_rearming_delayed_work (int *) ;
 int dbg (char*) ;
 int free_page (unsigned long) ;
 int kfree (struct cxacru_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void cxacru_unbind(struct usbatm_data *usbatm_instance,
  struct usb_interface *intf)
{
 struct cxacru_data *instance = usbatm_instance->driver_data;
 int is_polling = 1;

 dbg("cxacru_unbind entered");

 if (!instance) {
  dbg("cxacru_unbind: NULL instance!");
  return;
 }

 mutex_lock(&instance->poll_state_serialize);
 BUG_ON(instance->poll_state == CXPOLL_SHUTDOWN);



 if (instance->poll_state == CXPOLL_STOPPED)
  is_polling = 0;


 instance->poll_state = CXPOLL_SHUTDOWN;
 mutex_unlock(&instance->poll_state_serialize);

 if (is_polling)
  cancel_rearming_delayed_work(&instance->poll_work);

 usb_kill_urb(instance->snd_urb);
 usb_kill_urb(instance->rcv_urb);
 usb_free_urb(instance->snd_urb);
 usb_free_urb(instance->rcv_urb);

 free_page((unsigned long) instance->snd_buf);
 free_page((unsigned long) instance->rcv_buf);

 kfree(instance);

 usbatm_instance->driver_data = ((void*)0);
}
