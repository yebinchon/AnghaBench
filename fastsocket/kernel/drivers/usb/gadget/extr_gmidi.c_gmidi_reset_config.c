
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmidi_device {scalar_t__ config; int out_ep; int in_ep; } ;


 int DBG (struct gmidi_device*,char*) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static void gmidi_reset_config(struct gmidi_device *dev)
{
 if (dev->config == 0) {
  return;
 }

 DBG(dev, "reset config\n");




 usb_ep_disable(dev->in_ep);
 usb_ep_disable(dev->out_ep);
 dev->config = 0;
}
