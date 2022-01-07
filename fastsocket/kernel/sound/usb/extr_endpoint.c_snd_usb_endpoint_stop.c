
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {scalar_t__ use_count; int * prepare_data_urb; int * retire_data_urb; int * sync_slave; int * data_subs; } ;


 int deactivate_urbs (struct snd_usb_endpoint*,int,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int wait_clear_urbs (struct snd_usb_endpoint*) ;

void snd_usb_endpoint_stop(struct snd_usb_endpoint *ep,
      int force, int can_sleep, int wait)
{
 if (!ep)
  return;

 if (snd_BUG_ON(ep->use_count == 0))
  return;

 if (--ep->use_count == 0) {
  deactivate_urbs(ep, force, can_sleep);
  ep->data_subs = ((void*)0);
  ep->sync_slave = ((void*)0);
  ep->retire_data_urb = ((void*)0);
  ep->prepare_data_urb = ((void*)0);

  if (wait)
   wait_clear_urbs(ep);
 }
}
