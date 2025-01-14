
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int * input_dev; int * ep4_in_urb; } ;


 int input_unregister_device (int *) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

void snd_usb_caiaq_input_free(struct snd_usb_caiaqdev *dev)
{
 if (!dev || !dev->input_dev)
  return;

 usb_kill_urb(dev->ep4_in_urb);
 usb_free_urb(dev->ep4_in_urb);
 dev->ep4_in_urb = ((void*)0);

 input_unregister_device(dev->input_dev);
 dev->input_dev = ((void*)0);
}
