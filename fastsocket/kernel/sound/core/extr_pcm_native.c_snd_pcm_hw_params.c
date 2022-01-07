
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int oss; } ;
struct snd_pcm_substream2 {TYPE_2__ oss; } ;
struct snd_pcm_substream {TYPE_4__* ops; int latency_id; int mmap_count; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int channels; int buffer_size; unsigned int sample_bits; unsigned int frame_bits; unsigned int byte_align; int min_align; int period_step; int start_threshold; int stop_threshold; int boundary; scalar_t__ silence_size; scalar_t__ silence_threshold; int period_size; TYPE_3__* control; int tstamp_mode; int format; int rate_den; int rate_num; int info; int periods; int rate; int subformat; int access; TYPE_1__* status; } ;
struct snd_pcm_hw_params {unsigned int rmask; int rate_den; int rate_num; int info; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_8__ {int (* hw_params ) (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;int (* hw_free ) (struct snd_pcm_substream*) ;} ;
struct TYPE_7__ {int avail_min; } ;
struct TYPE_5__ {int state; } ;


 int EBADFD ;
 int ENXIO ;
 int LONG_MAX ;
 scalar_t__ PCM_RUNTIME_CHECK (struct snd_pcm_substream*) ;
 int PM_QOS_CPU_DMA_LATENCY ;



 int SNDRV_PCM_TSTAMP_NONE ;
 scalar_t__ atomic_read (int *) ;
 int params_access (struct snd_pcm_hw_params*) ;
 int params_buffer_size (struct snd_pcm_hw_params*) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_period_size (struct snd_pcm_hw_params*) ;
 int params_periods (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_subformat (struct snd_pcm_hw_params*) ;
 int period_to_usecs (struct snd_pcm_runtime*) ;
 int pm_qos_add_requirement (int ,int ,int) ;
 int pm_qos_remove_requirement (int ,int ) ;
 unsigned int snd_pcm_format_physical_width (int ) ;
 int snd_pcm_hw_params_choose (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int snd_pcm_hw_refine (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int snd_pcm_set_state (struct snd_pcm_substream*,int const) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_timer_resolution_change (struct snd_pcm_substream*) ;
 int stub1 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;
 int stub2 (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params)
{
 struct snd_pcm_runtime *runtime;
 int err, usecs;
 unsigned int bits;
 snd_pcm_uframes_t frames;

 if (PCM_RUNTIME_CHECK(substream))
  return -ENXIO;
 runtime = substream->runtime;
 snd_pcm_stream_lock_irq(substream);
 switch (runtime->status->state) {
 case 130:
 case 128:
 case 129:
  break;
 default:
  snd_pcm_stream_unlock_irq(substream);
  return -EBADFD;
 }
 snd_pcm_stream_unlock_irq(substream);



  if (atomic_read(&substream->mmap_count))
   return -EBADFD;

 params->rmask = ~0U;
 err = snd_pcm_hw_refine(substream, params);
 if (err < 0)
  goto _error;

 err = snd_pcm_hw_params_choose(substream, params);
 if (err < 0)
  goto _error;

 if (substream->ops->hw_params != ((void*)0)) {
  err = substream->ops->hw_params(substream, params);
  if (err < 0)
   goto _error;
 }

 runtime->access = params_access(params);
 runtime->format = params_format(params);
 runtime->subformat = params_subformat(params);
 runtime->channels = params_channels(params);
 runtime->rate = params_rate(params);
 runtime->period_size = params_period_size(params);
 runtime->periods = params_periods(params);
 runtime->buffer_size = params_buffer_size(params);
 runtime->info = params->info;
 runtime->rate_num = params->rate_num;
 runtime->rate_den = params->rate_den;

 bits = snd_pcm_format_physical_width(runtime->format);
 runtime->sample_bits = bits;
 bits *= runtime->channels;
 runtime->frame_bits = bits;
 frames = 1;
 while (bits % 8 != 0) {
  bits *= 2;
  frames *= 2;
 }
 runtime->byte_align = bits / 8;
 runtime->min_align = frames;


 runtime->tstamp_mode = SNDRV_PCM_TSTAMP_NONE;
 runtime->period_step = 1;
 runtime->control->avail_min = runtime->period_size;
 runtime->start_threshold = 1;
 runtime->stop_threshold = runtime->buffer_size;
 runtime->silence_threshold = 0;
 runtime->silence_size = 0;
 runtime->boundary = runtime->buffer_size;
 while (runtime->boundary * 2 <= LONG_MAX - runtime->buffer_size)
  runtime->boundary *= 2;

 snd_pcm_timer_resolution_change(substream);
 snd_pcm_set_state(substream, 128);

 pm_qos_remove_requirement(PM_QOS_CPU_DMA_LATENCY,
    substream->latency_id);
 if ((usecs = period_to_usecs(runtime)) >= 0)
  pm_qos_add_requirement(PM_QOS_CPU_DMA_LATENCY,
     substream->latency_id, usecs);
 return 0;
 _error:



 snd_pcm_set_state(substream, 130);
 if (substream->ops->hw_free != ((void*)0))
  substream->ops->hw_free(substream);
 return err;
}
