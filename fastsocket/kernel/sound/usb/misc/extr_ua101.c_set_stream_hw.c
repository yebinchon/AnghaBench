
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ua101 {int packets_per_second; int rate; int format_bit; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {int info; unsigned int channels_min; unsigned int channels_max; int buffer_bytes_max; int period_bytes_min; int periods_min; void* periods_max; void* period_bytes_max; int rate_max; int rate_min; int rates; int formats; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;


 int SNDRV_PCM_HW_PARAM_PERIOD_TIME ;
 int SNDRV_PCM_INFO_BATCH ;
 int SNDRV_PCM_INFO_BLOCK_TRANSFER ;
 int SNDRV_PCM_INFO_FIFO_IN_FRAMES ;
 int SNDRV_PCM_INFO_INTERLEAVED ;
 int SNDRV_PCM_INFO_MMAP ;
 int SNDRV_PCM_INFO_MMAP_VALID ;
 void* UINT_MAX ;
 int snd_pcm_hw_constraint_minmax (TYPE_2__*,int ,int,int) ;
 int snd_pcm_hw_constraint_msbits (TYPE_2__*,int ,int,int) ;
 int snd_pcm_rate_to_rate_bit (int ) ;

__attribute__((used)) static int set_stream_hw(struct ua101 *ua, struct snd_pcm_substream *substream,
    unsigned int channels)
{
 int err;

 substream->runtime->hw.info =
  SNDRV_PCM_INFO_MMAP |
  SNDRV_PCM_INFO_MMAP_VALID |
  SNDRV_PCM_INFO_BATCH |
  SNDRV_PCM_INFO_INTERLEAVED |
  SNDRV_PCM_INFO_BLOCK_TRANSFER |
  SNDRV_PCM_INFO_FIFO_IN_FRAMES;
 substream->runtime->hw.formats = ua->format_bit;
 substream->runtime->hw.rates = snd_pcm_rate_to_rate_bit(ua->rate);
 substream->runtime->hw.rate_min = ua->rate;
 substream->runtime->hw.rate_max = ua->rate;
 substream->runtime->hw.channels_min = channels;
 substream->runtime->hw.channels_max = channels;
 substream->runtime->hw.buffer_bytes_max = 45000 * 1024;
 substream->runtime->hw.period_bytes_min = 1;
 substream->runtime->hw.period_bytes_max = UINT_MAX;
 substream->runtime->hw.periods_min = 2;
 substream->runtime->hw.periods_max = UINT_MAX;
 err = snd_pcm_hw_constraint_minmax(substream->runtime,
        SNDRV_PCM_HW_PARAM_PERIOD_TIME,
        1500000 / ua->packets_per_second,
        8192000);
 if (err < 0)
  return err;
 err = snd_pcm_hw_constraint_msbits(substream->runtime, 0, 32, 24);
 return err;
}
