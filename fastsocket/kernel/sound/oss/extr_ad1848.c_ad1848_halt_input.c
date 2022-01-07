
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int lock; int audio_mode; } ;
typedef TYPE_2__ ad1848_info ;
struct TYPE_10__ {TYPE_1__* dmap_in; scalar_t__ devc; } ;
struct TYPE_8__ {int dma; } ;


 int PCM_ENABLE_INPUT ;
 int ad_mute (TYPE_2__*) ;
 int ad_read (TYPE_2__*,int) ;
 int ad_write (TYPE_2__*,int,int) ;
 TYPE_4__** audio_devs ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int io_Status (TYPE_2__*) ;
 int isa_dma_bridge_buggy ;
 int outb (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ad1848_halt_input(int dev)
{
 ad1848_info *devc = (ad1848_info *) audio_devs[dev]->devc;
 unsigned long flags;

 if (!(ad_read(devc, 9) & 0x02))
  return;

 spin_lock_irqsave(&devc->lock,flags);

 ad_mute(devc);

 {
  int tmout;

  if(!isa_dma_bridge_buggy)
          disable_dma(audio_devs[dev]->dmap_in->dma);

  for (tmout = 0; tmout < 100000; tmout++)
   if (ad_read(devc, 11) & 0x10)
    break;
  ad_write(devc, 9, ad_read(devc, 9) & ~0x02);

  if(!isa_dma_bridge_buggy)
          enable_dma(audio_devs[dev]->dmap_in->dma);
  devc->audio_mode &= ~PCM_ENABLE_INPUT;
 }

 outb(0, io_Status(devc));
 outb(0, io_Status(devc));

 devc->audio_mode &= ~PCM_ENABLE_INPUT;

 spin_unlock_irqrestore(&devc->lock,flags);
}
