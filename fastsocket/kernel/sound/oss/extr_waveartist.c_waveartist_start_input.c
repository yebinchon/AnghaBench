
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int audio_format; int channels; } ;
typedef TYPE_1__ wavnc_port_info ;
struct TYPE_6__ {int audio_mode; unsigned int xfer_count; } ;
typedef TYPE_2__ wavnc_info ;
struct TYPE_7__ {int flags; scalar_t__ devc; scalar_t__ portc; } ;


 int AFMT_S16_BE ;
 int AFMT_S16_LE ;
 int DEBUG_IN ;
 int DMA_AUTOMODE ;
 int PCM_ENABLE_INPUT ;
 int WACMD_INPUTSIZE ;
 TYPE_4__** audio_devs ;
 int debug_flg ;
 int printk (char*,unsigned long,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int waveartist_cmd2 (TYPE_2__*,int ,unsigned int) ;
 int waveartist_lock ;

__attribute__((used)) static void
waveartist_start_input(int dev, unsigned long buf, int __count, int intrflag)
{
 wavnc_port_info *portc = (wavnc_port_info *) audio_devs[dev]->portc;
 wavnc_info *devc = (wavnc_info *) audio_devs[dev]->devc;
 unsigned long flags;
 unsigned int count = __count;

 if (debug_flg & DEBUG_IN)
  printk("waveartist: start input, buf=0x%lx, count=0x%x...\n",
   buf, count);

 if (portc->audio_format & (AFMT_S16_LE | AFMT_S16_BE))
  count >>= 1;

 if (portc->channels > 1)
  count >>= 1;

 count -= 1;

 if (devc->audio_mode & PCM_ENABLE_INPUT &&
     audio_devs[dev]->flags & DMA_AUTOMODE &&
     intrflag &&
     count == devc->xfer_count) {
  devc->audio_mode |= PCM_ENABLE_INPUT;
  return;


 }

 spin_lock_irqsave(&waveartist_lock, flags);




 waveartist_cmd2(devc, WACMD_INPUTSIZE, count);

 devc->xfer_count = count;
 devc->audio_mode |= PCM_ENABLE_INPUT;

 spin_unlock_irqrestore(&waveartist_lock, flags);
}
