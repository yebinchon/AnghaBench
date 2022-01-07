
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {int maxframesize; int phase; int freqm; int datainterval; int lock; scalar_t__ fill_max; } ;


 int min (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_usb_endpoint_next_packet_size(struct snd_usb_endpoint *ep)
{
 unsigned long flags;
 int ret;

 if (ep->fill_max)
  return ep->maxframesize;

 spin_lock_irqsave(&ep->lock, flags);
 ep->phase = (ep->phase & 0xffff)
  + (ep->freqm << ep->datainterval);
 ret = min(ep->phase >> 16, ep->maxframesize);
 spin_unlock_irqrestore(&ep->lock, flags);

 return ret;
}
