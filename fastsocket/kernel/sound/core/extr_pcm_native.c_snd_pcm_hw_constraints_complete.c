
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int info; int rates; scalar_t__ buffer_bytes_max; int period_bytes_min; scalar_t__ periods_max; int periods_min; scalar_t__ period_bytes_max; scalar_t__ rate_max; int rate_min; scalar_t__ channels_max; int channels_min; int formats; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; struct snd_pcm_substream hw; } ;
struct snd_pcm_hardware {int info; int rates; scalar_t__ buffer_bytes_max; int period_bytes_min; scalar_t__ periods_max; int periods_min; scalar_t__ period_bytes_max; scalar_t__ rate_max; int rate_min; scalar_t__ channels_max; int channels_min; int formats; struct snd_pcm_runtime* runtime; } ;


 int EINVAL ;
 int SNDRV_PCM_ACCESS_MMAP_COMPLEX ;
 int SNDRV_PCM_ACCESS_MMAP_INTERLEAVED ;
 int SNDRV_PCM_ACCESS_MMAP_NONINTERLEAVED ;
 int SNDRV_PCM_ACCESS_RW_INTERLEAVED ;
 int SNDRV_PCM_ACCESS_RW_NONINTERLEAVED ;
 int SNDRV_PCM_HW_PARAM_ACCESS ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_HW_PARAM_SUBFORMAT ;
 int SNDRV_PCM_INFO_COMPLEX ;
 int SNDRV_PCM_INFO_INTERLEAVED ;
 int SNDRV_PCM_INFO_MMAP ;
 int SNDRV_PCM_INFO_NONINTERLEAVED ;
 int SNDRV_PCM_RATE_CONTINUOUS ;
 int SNDRV_PCM_RATE_KNOT ;
 int SNDRV_PCM_SUBFORMAT_STD ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_mask (struct snd_pcm_runtime*,int ,int) ;
 int snd_pcm_hw_constraint_mask64 (struct snd_pcm_runtime*,int ,int ) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,scalar_t__) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct snd_pcm_substream*,int ,int) ;
 int snd_pcm_hw_rule_buffer_bytes_max ;
 int snd_pcm_hw_rule_rate ;

int snd_pcm_hw_constraints_complete(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_pcm_hardware *hw = &runtime->hw;
 int err;
 unsigned int mask = 0;

        if (hw->info & SNDRV_PCM_INFO_INTERLEAVED)
  mask |= 1 << SNDRV_PCM_ACCESS_RW_INTERLEAVED;
        if (hw->info & SNDRV_PCM_INFO_NONINTERLEAVED)
  mask |= 1 << SNDRV_PCM_ACCESS_RW_NONINTERLEAVED;
 if (hw->info & SNDRV_PCM_INFO_MMAP) {
  if (hw->info & SNDRV_PCM_INFO_INTERLEAVED)
   mask |= 1 << SNDRV_PCM_ACCESS_MMAP_INTERLEAVED;
  if (hw->info & SNDRV_PCM_INFO_NONINTERLEAVED)
   mask |= 1 << SNDRV_PCM_ACCESS_MMAP_NONINTERLEAVED;
  if (hw->info & SNDRV_PCM_INFO_COMPLEX)
   mask |= 1 << SNDRV_PCM_ACCESS_MMAP_COMPLEX;
 }
 err = snd_pcm_hw_constraint_mask(runtime, SNDRV_PCM_HW_PARAM_ACCESS, mask);
 if (err < 0)
  return err;

 err = snd_pcm_hw_constraint_mask64(runtime, SNDRV_PCM_HW_PARAM_FORMAT, hw->formats);
 if (err < 0)
  return err;

 err = snd_pcm_hw_constraint_mask(runtime, SNDRV_PCM_HW_PARAM_SUBFORMAT, 1 << SNDRV_PCM_SUBFORMAT_STD);
 if (err < 0)
  return err;

 err = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_CHANNELS,
        hw->channels_min, hw->channels_max);
 if (err < 0)
  return err;

 err = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
        hw->rate_min, hw->rate_max);
  if (err < 0)
   return err;

 err = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
        hw->period_bytes_min, hw->period_bytes_max);
  if (err < 0)
   return err;

 err = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_PERIODS,
        hw->periods_min, hw->periods_max);
 if (err < 0)
  return err;

 err = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
        hw->period_bytes_min, hw->buffer_bytes_max);
 if (err < 0)
  return err;

 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
      snd_pcm_hw_rule_buffer_bytes_max, substream,
      SNDRV_PCM_HW_PARAM_BUFFER_BYTES, -1);
 if (err < 0)
  return err;


 if (runtime->dma_bytes) {
  err = snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 0, runtime->dma_bytes);
  if (err < 0)
   return -EINVAL;
 }

 if (!(hw->rates & (SNDRV_PCM_RATE_KNOT | SNDRV_PCM_RATE_CONTINUOUS))) {
  err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
       snd_pcm_hw_rule_rate, hw,
       SNDRV_PCM_HW_PARAM_RATE, -1);
  if (err < 0)
   return err;
 }


 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);

 return 0;
}
