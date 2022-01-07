
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct dlfb_data {TYPE_1__* info; struct dlfb_data* backing_buffer; int screen_size; int udev; int tx_urb; int bulk_mutex; } ;
struct TYPE_3__ {int screen_base; int cmap; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (TYPE_1__*) ;
 int kfree (struct dlfb_data*) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 int rvfree (int ,int ) ;
 int unregister_framebuffer (TYPE_1__*) ;
 int usb_free_urb (int ) ;
 struct dlfb_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void dlfb_disconnect(struct usb_interface *interface)
{
 struct dlfb_data *dev_info = usb_get_intfdata(interface);

 mutex_unlock(&dev_info->bulk_mutex);

 usb_kill_urb(dev_info->tx_urb);
 usb_free_urb(dev_info->tx_urb);
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(dev_info->udev);

 if (dev_info->info) {
  unregister_framebuffer(dev_info->info);
  fb_dealloc_cmap(&dev_info->info->cmap);
  rvfree(dev_info->info->screen_base, dev_info->screen_size);
  kfree(dev_info->backing_buffer);
  framebuffer_release(dev_info->info);

 }

 kfree(dev_info);

 printk("DisplayLink device disconnected\n");
}
