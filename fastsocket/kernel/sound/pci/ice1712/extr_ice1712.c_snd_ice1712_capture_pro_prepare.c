
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int capture_pro_size; int reg_lock; } ;
struct TYPE_2__ {int dma_addr; } ;


 int CAPTURE_ADDR ;
 int CAPTURE_COUNT ;
 int CAPTURE_SIZE ;
 int ICEMT (struct snd_ice1712*,int ) ;
 int outl (int ,int ) ;
 int outw (int,int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ice1712_capture_pro_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);

 ice->capture_pro_size = snd_pcm_lib_buffer_bytes(substream);
 spin_lock_irq(&ice->reg_lock);
 outl(substream->runtime->dma_addr, ICEMT(ice, CAPTURE_ADDR));
 outw((ice->capture_pro_size >> 2) - 1, ICEMT(ice, CAPTURE_SIZE));
 outw((snd_pcm_lib_period_bytes(substream) >> 2) - 1, ICEMT(ice, CAPTURE_COUNT));
 spin_unlock_irq(&ice->reg_lock);
 return 0;
}
