
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int hardware; scalar_t__ playback_format; unsigned int p_dma_size; unsigned int p_period_size; unsigned int force_mode16; int dma8; int reg_lock; int mixer_lock; int mode; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int rate; int channels; int* dma_area; int rate_den; int dma_addr; } ;


 int DMA_AUTOINIT ;
 int DMA_MODE_WRITE ;
 int EINVAL ;
 unsigned int SB8_RATE (int) ;
 unsigned int SB_DSP_BLOCK_SIZE ;
 unsigned int SB_DSP_DMA8_EXIT ;
 void* SB_DSP_HI_OUTPUT_AUTO ;
 scalar_t__ SB_DSP_LO_OUTPUT_AUTO ;
 scalar_t__ SB_DSP_OUTPUT ;
 int SB_DSP_PLAYBACK_FILT ;
 unsigned int SB_DSP_SAMPLE_RATE ;
 unsigned int SB_DSP_SPEAKER_ON ;
 int SB_DSP_STEREO_SW ;




 int SB_MODE_HALT ;
 int snd_BUG_ON (int) ;
 int snd_dma_program (int ,int ,unsigned int,int) ;
 unsigned int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 unsigned int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_sb* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_sbdsp_command (struct snd_sb*,unsigned int) ;
 unsigned int snd_sbmixer_read (struct snd_sb*,int ) ;
 int snd_sbmixer_write (struct snd_sb*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_sb8_playback_prepare(struct snd_pcm_substream *substream)
{
 unsigned long flags;
 struct snd_sb *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned int mixreg, rate, size, count;

 rate = runtime->rate;
 switch (chip->hardware) {
 case 128:
  if (runtime->channels > 1) {
   if (snd_BUG_ON(rate != SB8_RATE(11025) &&
           rate != SB8_RATE(22050)))
    return -EINVAL;
   chip->playback_format = SB_DSP_HI_OUTPUT_AUTO;
   break;
  }

 case 129:
  if (rate > 23000) {
   chip->playback_format = SB_DSP_HI_OUTPUT_AUTO;
   break;
  }

 case 130:
  chip->playback_format = SB_DSP_LO_OUTPUT_AUTO;
  break;
 case 131:
  chip->playback_format = SB_DSP_OUTPUT;
  break;
 default:
  return -EINVAL;
 }
 size = chip->p_dma_size = snd_pcm_lib_buffer_bytes(substream);
 count = chip->p_period_size = snd_pcm_lib_period_bytes(substream);
 spin_lock_irqsave(&chip->reg_lock, flags);
 snd_sbdsp_command(chip, SB_DSP_SPEAKER_ON);
 if (runtime->channels > 1) {

  spin_lock(&chip->mixer_lock);
  mixreg = snd_sbmixer_read(chip, SB_DSP_STEREO_SW);
  snd_sbmixer_write(chip, SB_DSP_STEREO_SW, mixreg | 0x02);
  spin_unlock(&chip->mixer_lock);


  snd_sbdsp_command(chip, SB_DSP_DMA8_EXIT);
  runtime->dma_area[0] = 0x80;
  snd_dma_program(chip->dma8, runtime->dma_addr, 1, DMA_MODE_WRITE);

  chip->mode = SB_MODE_HALT;
  snd_sbdsp_command(chip, SB_DSP_OUTPUT);
  snd_sbdsp_command(chip, 0);
  snd_sbdsp_command(chip, 0);
 }
 snd_sbdsp_command(chip, SB_DSP_SAMPLE_RATE);
 if (runtime->channels > 1) {
  snd_sbdsp_command(chip, 256 - runtime->rate_den / 2);
  spin_lock(&chip->mixer_lock);

  mixreg = snd_sbmixer_read(chip, SB_DSP_PLAYBACK_FILT);
  snd_sbmixer_write(chip, SB_DSP_PLAYBACK_FILT, mixreg | 0x20);
  spin_unlock(&chip->mixer_lock);

  chip->force_mode16 = mixreg;
 } else {
  snd_sbdsp_command(chip, 256 - runtime->rate_den);
 }
 if (chip->playback_format != SB_DSP_OUTPUT) {
  count--;
  snd_sbdsp_command(chip, SB_DSP_BLOCK_SIZE);
  snd_sbdsp_command(chip, count & 0xff);
  snd_sbdsp_command(chip, count >> 8);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 snd_dma_program(chip->dma8, runtime->dma_addr,
   size, DMA_MODE_WRITE | DMA_AUTOINIT);
 return 0;
}
