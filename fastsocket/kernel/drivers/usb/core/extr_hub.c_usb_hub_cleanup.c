
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hub_driver ;
 int khubd_task ;
 int kthread_stop (int ) ;
 int usb_deregister (int *) ;

void usb_hub_cleanup(void)
{
 kthread_stop(khubd_task);
 usb_deregister(&hub_driver);
}
