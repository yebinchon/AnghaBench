
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {int playback_format; int reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int rate; } ;
struct TYPE_2__ {unsigned int dsp_cmd; unsigned int format; unsigned int dma_off; } ;


 int ALS4000_FORMAT_16BIT ;
 TYPE_1__ playback_cmd (struct snd_sb*) ;
 int snd_als4000_get_format (struct snd_pcm_runtime*) ;
 int snd_als4000_set_playback_dma (struct snd_sb*,int ,unsigned long) ;
 int snd_als4000_set_rate (struct snd_sb*,int ) ;
 unsigned long snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sbdsp_command (struct snd_sb*,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_als4000_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long size;
 unsigned count;

 chip->playback_format = snd_als4000_get_format(runtime);

 size = snd_pcm_lib_buffer_bytes(substream);
 count = snd_pcm_lib_period_bytes(substream);

 if (chip->playback_format & ALS4000_FORMAT_16BIT)
  count >>= 1;
 count--;







 spin_lock_irq(&chip->reg_lock);
 snd_als4000_set_rate(chip, runtime->rate);
 snd_als4000_set_playback_dma(chip, runtime->dma_addr, size);



 snd_sbdsp_command(chip, playback_cmd(chip).dsp_cmd);
 snd_sbdsp_command(chip, playback_cmd(chip).format);
 snd_sbdsp_command(chip, count & 0xff);
 snd_sbdsp_command(chip, count >> 8);
 snd_sbdsp_command(chip, playback_cmd(chip).dma_off);
 spin_unlock_irq(&chip->reg_lock);

 return 0;
}
