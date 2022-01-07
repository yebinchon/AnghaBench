
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; TYPE_1__* dmap_out; } ;
struct TYPE_3__ {int dma; } ;


 int DEB (int ) ;
 int DMA_AUTOMODE ;
 int PCM_DAC ;
 TYPE_2__** audio_devs ;
 int pas_lock ;
 int pas_read (int) ;
 int pas_write (int,int) ;
 unsigned long pcm_count ;
 int pcm_mode ;
 int printk (char*,unsigned long,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pas_audio_output_block(int dev, unsigned long buf, int count,
         int intrflag)
{
 unsigned long flags, cnt;

 DEB(printk("pas2_pcm.c: static void pas_audio_output_block(char *buf = %P, int count = %X)\n", buf, count));

 cnt = count;
 if (audio_devs[dev]->dmap_out->dma > 3)
  cnt >>= 1;

 if (audio_devs[dev]->flags & DMA_AUTOMODE &&
     intrflag &&
     cnt == pcm_count)
  return;

 spin_lock_irqsave(&pas_lock, flags);

 pas_write(pas_read(0xF8A) & ~0x40,
    0xF8A);



 if (audio_devs[dev]->dmap_out->dma > 3)
  count >>= 1;

 if (count != pcm_count)
 {
  pas_write(pas_read(0x0B8A) & ~0x80, 0x0B8A);
  pas_write(0x40 | 0x30 | 0x04, 0x138B);
  pas_write(count & 0xff, 0x1389);
  pas_write((count >> 8) & 0xff, 0x1389);
  pas_write(pas_read(0x0B8A) | 0x80, 0x0B8A);

  pcm_count = count;
 }
 pas_write(pas_read(0x0B8A) | 0x80 | 0x40, 0x0B8A);




 pcm_mode = PCM_DAC;

 spin_unlock_irqrestore(&pas_lock, flags);
}
