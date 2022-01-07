
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int dma_addr; int format; } ;
struct TYPE_2__ {unsigned int size; int reg; int addr; } ;
struct snd_ad1889 {TYPE_1__ wave; int lock; } ;


 int AD_CHAN_WAV ;
 int AD_DS_WAS ;
 int AD_DS_WSMC ;
 int AD_DS_WSMC_WA16 ;
 int AD_DS_WSMC_WAST ;
 int ad1889_channel_reset (struct snd_ad1889*,int ) ;
 int ad1889_debug (char*,int ,unsigned int,unsigned int,int,int) ;
 int ad1889_load_wave_buffer_address (struct snd_ad1889*,int ) ;
 int ad1889_load_wave_buffer_count (struct snd_ad1889*,unsigned int) ;
 int ad1889_load_wave_interrupt_count (struct snd_ad1889*,unsigned int) ;
 int ad1889_readw (struct snd_ad1889*,int ) ;
 int ad1889_writew (struct snd_ad1889*,int ,int) ;
 int snd_pcm_format_width (int ) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_ad1889* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_ad1889_playback_prepare(struct snd_pcm_substream *ss)
{
 struct snd_ad1889 *chip = snd_pcm_substream_chip(ss);
 struct snd_pcm_runtime *rt = ss->runtime;
 unsigned int size = snd_pcm_lib_buffer_bytes(ss);
 unsigned int count = snd_pcm_lib_period_bytes(ss);
 u16 reg;

 ad1889_channel_reset(chip, AD_CHAN_WAV);

 reg = ad1889_readw(chip, AD_DS_WSMC);


 reg &= ~(AD_DS_WSMC_WA16 | AD_DS_WSMC_WAST);

 if (snd_pcm_format_width(rt->format) == 16)
  reg |= AD_DS_WSMC_WA16;

 if (rt->channels > 1)
  reg |= AD_DS_WSMC_WAST;


 spin_lock_irq(&chip->lock);

 chip->wave.size = size;
 chip->wave.reg = reg;
 chip->wave.addr = rt->dma_addr;

 ad1889_writew(chip, AD_DS_WSMC, chip->wave.reg);


 ad1889_writew(chip, AD_DS_WAS, rt->rate);


 ad1889_load_wave_buffer_address(chip, chip->wave.addr);
 ad1889_load_wave_buffer_count(chip, size);
 ad1889_load_wave_interrupt_count(chip, count);


 ad1889_readw(chip, AD_DS_WSMC);

 spin_unlock_irq(&chip->lock);

 ad1889_debug("prepare playback: addr = 0x%x, count = %u, "
   "size = %u, reg = 0x%x, rate = %u\n", chip->wave.addr,
   count, size, reg, rt->rate);
 return 0;
}
