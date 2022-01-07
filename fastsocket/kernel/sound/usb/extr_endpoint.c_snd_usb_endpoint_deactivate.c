
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {scalar_t__ use_count; int flags; } ;


 int EINVAL ;
 int EP_FLAG_ACTIVATED ;
 int clear_bit (int ,int *) ;
 int deactivate_urbs (struct snd_usb_endpoint*,int,int) ;
 int wait_clear_urbs (struct snd_usb_endpoint*) ;

int snd_usb_endpoint_deactivate(struct snd_usb_endpoint *ep)
{
 if (!ep)
  return -EINVAL;

 deactivate_urbs(ep, 1, 1);
 wait_clear_urbs(ep);

 if (ep->use_count != 0)
  return 0;

 clear_bit(EP_FLAG_ACTIVATED, &ep->flags);

 return 0;
}
