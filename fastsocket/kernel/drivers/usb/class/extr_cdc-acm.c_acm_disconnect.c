
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct acm {TYPE_1__ port; struct usb_interface* control; struct usb_interface* data; int combined_interfaces; int ctrl_dma; int ctrl_buffer; int ctrlsize; int * dev; scalar_t__ country_codes; } ;


 int acm_driver ;
 int acm_read_buffers_free (struct acm*) ;
 int acm_tty_unregister (struct acm*) ;
 int acm_write_buffers_free (struct acm*) ;
 int dev_attr_bmCapabilities ;
 int dev_attr_iCountryCodeRelDate ;
 int dev_attr_wCountryCodes ;
 int device_remove_file (int *,int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_mutex ;
 int stop_data_traffic (struct acm*) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (TYPE_1__*) ;
 int usb_buffer_free (struct usb_device*,int ,int ,int ) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct acm* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void acm_disconnect(struct usb_interface *intf)
{
 struct acm *acm = usb_get_intfdata(intf);
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 struct tty_struct *tty;


 if (!acm)
  return;

 mutex_lock(&open_mutex);
 if (acm->country_codes) {
  device_remove_file(&acm->control->dev,
    &dev_attr_wCountryCodes);
  device_remove_file(&acm->control->dev,
    &dev_attr_iCountryCodeRelDate);
 }
 device_remove_file(&acm->control->dev, &dev_attr_bmCapabilities);
 acm->dev = ((void*)0);
 usb_set_intfdata(acm->control, ((void*)0));
 usb_set_intfdata(acm->data, ((void*)0));

 stop_data_traffic(acm);

 acm_write_buffers_free(acm);
 usb_buffer_free(usb_dev, acm->ctrlsize, acm->ctrl_buffer,
        acm->ctrl_dma);
 acm_read_buffers_free(acm);

 if (!acm->combined_interfaces)
  usb_driver_release_interface(&acm_driver, intf == acm->control ?
     acm->data : acm->control);

 if (acm->port.count == 0) {
  acm_tty_unregister(acm);
  mutex_unlock(&open_mutex);
  return;
 }

 mutex_unlock(&open_mutex);
 tty = tty_port_tty_get(&acm->port);
 if (tty) {
  tty_hangup(tty);
  tty_kref_put(tty);
 }
}
