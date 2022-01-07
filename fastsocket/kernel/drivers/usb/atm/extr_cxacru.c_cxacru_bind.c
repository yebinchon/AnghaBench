
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbatm_data {int flags; struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct cxacru_modem_type {int dummy; } ;
struct cxacru_data {int line_status; int adsl_status; void* rcv_urb; void* snd_urb; int * rcv_buf; int * snd_buf; int poll_work; int cm_serialize; int snd_done; int rcv_done; int adsl_state_serialize; int poll_state; int poll_state_serialize; struct cxacru_modem_type* modem_type; struct usbatm_data* usbatm; } ;


 int CXACRU_EP_CMD ;
 int CXPOLL_STOPPED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PAGE_SIZE ;
 int UDSL_SKIP_HEAVY_INIT ;
 scalar_t__ __get_free_page (int ) ;
 int cxacru_blocking_completion ;
 scalar_t__ cxacru_card_status (struct cxacru_data*) ;
 int cxacru_poll_status ;
 int dbg (char*) ;
 int free_page (unsigned long) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct cxacru_data*) ;
 struct cxacru_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (void*,struct usb_device*,int ,int *,int ,int ,int *,int) ;
 int usb_free_urb (void*) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_sndintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int cxacru_bind(struct usbatm_data *usbatm_instance,
         struct usb_interface *intf, const struct usb_device_id *id)
{
 struct cxacru_data *instance;
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 int ret;


 instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 if (!instance) {
  dbg("cxacru_bind: no memory for instance data");
  return -ENOMEM;
 }

 instance->usbatm = usbatm_instance;
 instance->modem_type = (struct cxacru_modem_type *) id->driver_info;

 mutex_init(&instance->poll_state_serialize);
 instance->poll_state = CXPOLL_STOPPED;
 instance->line_status = -1;
 instance->adsl_status = -1;

 mutex_init(&instance->adsl_state_serialize);

 instance->rcv_buf = (u8 *) __get_free_page(GFP_KERNEL);
 if (!instance->rcv_buf) {
  dbg("cxacru_bind: no memory for rcv_buf");
  ret = -ENOMEM;
  goto fail;
 }
 instance->snd_buf = (u8 *) __get_free_page(GFP_KERNEL);
 if (!instance->snd_buf) {
  dbg("cxacru_bind: no memory for snd_buf");
  ret = -ENOMEM;
  goto fail;
 }
 instance->rcv_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!instance->rcv_urb) {
  dbg("cxacru_bind: no memory for rcv_urb");
  ret = -ENOMEM;
  goto fail;
 }
 instance->snd_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!instance->snd_urb) {
  dbg("cxacru_bind: no memory for snd_urb");
  ret = -ENOMEM;
  goto fail;
 }

 usb_fill_int_urb(instance->rcv_urb,
   usb_dev, usb_rcvintpipe(usb_dev, CXACRU_EP_CMD),
   instance->rcv_buf, PAGE_SIZE,
   cxacru_blocking_completion, &instance->rcv_done, 1);

 usb_fill_int_urb(instance->snd_urb,
   usb_dev, usb_sndintpipe(usb_dev, CXACRU_EP_CMD),
   instance->snd_buf, PAGE_SIZE,
   cxacru_blocking_completion, &instance->snd_done, 4);

 mutex_init(&instance->cm_serialize);

 INIT_DELAYED_WORK(&instance->poll_work, cxacru_poll_status);

 usbatm_instance->driver_data = instance;

 usbatm_instance->flags = (cxacru_card_status(instance) ? 0 : UDSL_SKIP_HEAVY_INIT);

 return 0;

 fail:
 free_page((unsigned long) instance->snd_buf);
 free_page((unsigned long) instance->rcv_buf);
 usb_free_urb(instance->snd_urb);
 usb_free_urb(instance->rcv_urb);
 kfree(instance);

 return ret;
}
