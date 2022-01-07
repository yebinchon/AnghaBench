
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int open_mode; } ;
typedef TYPE_1__ ad1848_port_info ;
struct TYPE_6__ {int open_mode; int dual_dma; int record_dev; int playback_dev; int lock; scalar_t__ audio_mode; scalar_t__ intr_active; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_7__ {int flags; scalar_t__ portc; scalar_t__ devc; } ;


 int DMA_DUPLEX ;
 int EBUSY ;
 int ENXIO ;
 int OPEN_READ ;
 int OPEN_WRITE ;
 int ad1848_trigger (int,int ) ;
 int ad_mute (TYPE_2__*) ;
 TYPE_3__** audio_devs ;
 int num_audiodevs ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ad1848_open(int dev, int mode)
{
 ad1848_info *devc;
 ad1848_port_info *portc;
 unsigned long flags;

 if (dev < 0 || dev >= num_audiodevs)
  return -ENXIO;

 devc = (ad1848_info *) audio_devs[dev]->devc;
 portc = (ad1848_port_info *) audio_devs[dev]->portc;


 spin_lock(&devc->lock);
 if (portc->open_mode || (devc->open_mode & mode))
 {
  spin_unlock(&devc->lock);
  return -EBUSY;
 }
 devc->dual_dma = 0;

 if (audio_devs[dev]->flags & DMA_DUPLEX)
 {
  devc->dual_dma = 1;
 }
 devc->intr_active = 0;
 devc->audio_mode = 0;
 devc->open_mode |= mode;
 portc->open_mode = mode;
 spin_unlock(&devc->lock);
 ad1848_trigger(dev, 0);

 if (mode & OPEN_READ)
  devc->record_dev = dev;
 if (mode & OPEN_WRITE)
  devc->playback_dev = dev;



 spin_lock_irqsave(&devc->lock,flags);
 ad_mute(devc);
 spin_unlock_irqrestore(&devc->lock,flags);

 return 0;
}
