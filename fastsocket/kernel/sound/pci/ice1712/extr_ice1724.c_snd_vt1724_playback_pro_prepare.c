
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_2__ {int channels; int dma_addr; } ;


 int BURST ;
 scalar_t__ ICEMT1724 (struct snd_ice1712*,int ) ;
 int PLAYBACK_ADDR ;
 int PLAYBACK_COUNT ;
 int PLAYBACK_SIZE ;
 int outb (unsigned int,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_vt1724_playback_pro_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 unsigned char val;
 unsigned int size;

 spin_lock_irq(&ice->reg_lock);
 val = (8 - substream->runtime->channels) >> 1;
 outb(val, ICEMT1724(ice, BURST));

 outl(substream->runtime->dma_addr, ICEMT1724(ice, PLAYBACK_ADDR));

 size = (snd_pcm_lib_buffer_bytes(substream) >> 2) - 1;

 outw(size, ICEMT1724(ice, PLAYBACK_SIZE));
 outb(size >> 16, ICEMT1724(ice, PLAYBACK_SIZE) + 2);
 size = (snd_pcm_lib_period_bytes(substream) >> 2) - 1;

 outw(size, ICEMT1724(ice, PLAYBACK_COUNT));
 outb(size >> 16, ICEMT1724(ice, PLAYBACK_COUNT) + 2);

 spin_unlock_irq(&ice->reg_lock);
 return 0;
}
