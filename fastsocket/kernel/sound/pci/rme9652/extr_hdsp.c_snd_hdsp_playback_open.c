
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_7__ {int rate_min; int rate_max; int channels_max; int channels_min; int rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; int dma_bytes; int dma_area; } ;
struct hdsp {int system_sample_rate; scalar_t__ io_type; TYPE_2__* spdif_ctl; int card; int creg_spdif; int creg_spdif_stream; int ss_out_channels; int qs_out_channels; scalar_t__ clock_source_locked; int lock; struct snd_pcm_substream* playback_substream; int playback_pid; int playback_buffer; } ;
struct TYPE_8__ {int pid; } ;
struct TYPE_6__ {int id; TYPE_1__* vd; } ;
struct TYPE_5__ {int access; } ;


 int EIO ;
 scalar_t__ H9632 ;
 int HDSP_DMA_AREA_BYTES ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_RATE_KNOT ;
 TYPE_4__* current ;
 scalar_t__ hdsp_check_for_firmware (struct hdsp*,int) ;
 scalar_t__ hdsp_check_for_iobox (struct hdsp*) ;
 int hdsp_hw_constraints_9632_sample_rates ;
 int hdsp_hw_constraints_period_sizes ;
 int snd_ctl_notify (int ,int,int *) ;
 int snd_hdsp_hw_rule_out_channels ;
 int snd_hdsp_hw_rule_out_channels_rate ;
 int snd_hdsp_hw_rule_rate_out_channels ;
 TYPE_3__ snd_hdsp_playback_subinfo ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct hdsp*,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_playback_open(struct snd_pcm_substream *substream)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (hdsp_check_for_iobox (hdsp))
  return -EIO;

 if (hdsp_check_for_firmware(hdsp, 1))
  return -EIO;

 spin_lock_irq(&hdsp->lock);

 snd_pcm_set_sync(substream);

        runtime->hw = snd_hdsp_playback_subinfo;
 runtime->dma_area = hdsp->playback_buffer;
 runtime->dma_bytes = HDSP_DMA_AREA_BYTES;

 hdsp->playback_pid = current->pid;
 hdsp->playback_substream = substream;

 spin_unlock_irq(&hdsp->lock);

 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, &hdsp_hw_constraints_period_sizes);
 if (hdsp->clock_source_locked) {
  runtime->hw.rate_min = runtime->hw.rate_max = hdsp->system_sample_rate;
 } else if (hdsp->io_type == H9632) {
  runtime->hw.rate_max = 192000;
  runtime->hw.rates = SNDRV_PCM_RATE_KNOT;
  snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, &hdsp_hw_constraints_9632_sample_rates);
 }
 if (hdsp->io_type == H9632) {
  runtime->hw.channels_min = hdsp->qs_out_channels;
  runtime->hw.channels_max = hdsp->ss_out_channels;
 }

 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        snd_hdsp_hw_rule_out_channels, hdsp,
        SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        snd_hdsp_hw_rule_out_channels_rate, hdsp,
        SNDRV_PCM_HW_PARAM_RATE, -1);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
        snd_hdsp_hw_rule_rate_out_channels, hdsp,
        SNDRV_PCM_HW_PARAM_CHANNELS, -1);

 hdsp->creg_spdif_stream = hdsp->creg_spdif;
 hdsp->spdif_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(hdsp->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &hdsp->spdif_ctl->id);
 return 0;
}
