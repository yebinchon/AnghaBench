
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int fifo_size; int buffer_bytes_max; int periods_max; int periods_min; int period_bytes_max; int period_bytes_min; int formats; int info; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_pcm_hardware {int fifo_size; int buffer_bytes_max; int periods_max; int periods_min; int period_bytes_max; int period_bytes_min; int formats; int info; } ;



int snd_soc_set_runtime_hwparams(struct snd_pcm_substream *substream,
 const struct snd_pcm_hardware *hw)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 runtime->hw.info = hw->info;
 runtime->hw.formats = hw->formats;
 runtime->hw.period_bytes_min = hw->period_bytes_min;
 runtime->hw.period_bytes_max = hw->period_bytes_max;
 runtime->hw.periods_min = hw->periods_min;
 runtime->hw.periods_max = hw->periods_max;
 runtime->hw.buffer_bytes_max = hw->buffer_bytes_max;
 runtime->hw.fifo_size = hw->fifo_size;
 return 0;
}
