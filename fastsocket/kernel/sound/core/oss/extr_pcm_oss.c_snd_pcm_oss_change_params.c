
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_pcm_sw_params {int start_threshold; int stop_threshold; int period_step; int avail_min; void* silence_size; void* silence_threshold; int tstamp_mode; } ;
struct snd_pcm_substream {scalar_t__ stream; int mmap_count; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int boundary; int buffer_size; int period_size; int dma_bytes; scalar_t__ dma_area; int format; } ;
struct snd_pcm_plugin {int dummy; } ;
struct snd_pcm_hw_params {int start_threshold; int stop_threshold; int period_step; int avail_min; void* silence_size; void* silence_threshold; int tstamp_mode; } ;
struct snd_mask {int dummy; } ;
typedef size_t ssize_t ;
typedef void* snd_pcm_uframes_t ;
struct TYPE_8__ {int rate; int channels; size_t period_bytes; int periods; size_t buffer_bytes; int prepare; int params_lock; int period_frames; scalar_t__ buffer_used; scalar_t__ params; int buffer; int format; scalar_t__ plugin_first; scalar_t__ trigger; } ;
struct TYPE_10__ {TYPE_3__ oss; } ;
struct TYPE_6__ {int direct; scalar_t__ nosilence; } ;
struct TYPE_7__ {TYPE_1__ setup; } ;
struct TYPE_9__ {TYPE_2__ oss; } ;


 int EINTR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_ACCESS_MMAP_INTERLEAVED ;
 int SNDRV_PCM_ACCESS_RW_INTERLEAVED ;
 int SNDRV_PCM_ACCESS_RW_NONINTERLEAVED ;
 int SNDRV_PCM_FORMAT_LAST ;
 int SNDRV_PCM_HW_PARAM_ACCESS ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_IOCTL_DROP ;
 int SNDRV_PCM_IOCTL_HW_PARAMS ;
 int SNDRV_PCM_IOCTL_SW_PARAMS ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_PCM_TSTAMP_NONE ;
 int _snd_pcm_hw_param_min (struct snd_pcm_sw_params*,int ,int,int ) ;
 int _snd_pcm_hw_param_set (struct snd_pcm_sw_params*,int ,int,int ) ;
 int _snd_pcm_hw_param_setinteger (struct snd_pcm_sw_params*,int ) ;
 int _snd_pcm_hw_params_any (struct snd_pcm_sw_params*) ;
 scalar_t__ atomic_read (int *) ;
 int bytes_to_samples (struct snd_pcm_runtime*,int ) ;
 int choose_rate (struct snd_pcm_substream*,struct snd_pcm_sw_params*,int) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_sw_params*,int ) ;
 int kfree (struct snd_pcm_sw_params*) ;
 struct snd_pcm_sw_params* kmalloc (int,int ) ;
 int memcpy (struct snd_pcm_sw_params*,struct snd_pcm_sw_params*,int) ;
 int memset (struct snd_pcm_sw_params*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 TYPE_5__* oss_runtime (struct snd_pcm_runtime*) ;
 TYPE_4__* oss_substream (struct snd_pcm_substream*) ;
 int params_access (struct snd_pcm_sw_params*) ;
 size_t params_buffer_size (struct snd_pcm_sw_params*) ;
 int params_channels (struct snd_pcm_sw_params*) ;
 int params_format (struct snd_pcm_sw_params*) ;
 size_t params_period_size (struct snd_pcm_sw_params*) ;
 int params_periods (struct snd_pcm_sw_params*) ;
 int params_rate (struct snd_pcm_sw_params*) ;
 int pdprintf (char*,size_t,size_t,...) ;
 int snd_mask_none (struct snd_mask*) ;
 int snd_mask_set (struct snd_mask*,int) ;
 scalar_t__ snd_mask_test (struct snd_mask*,int) ;
 int snd_pcm_alsa_frames (struct snd_pcm_substream*,size_t) ;
 int snd_pcm_format_physical_width (int) ;
 int snd_pcm_format_set_silence (int ,scalar_t__,int ) ;
 int snd_pcm_hw_param_mask (struct snd_pcm_substream*,struct snd_pcm_sw_params*,int ,struct snd_mask*) ;
 int snd_pcm_hw_param_near (struct snd_pcm_substream*,struct snd_pcm_sw_params*,int ,int,int *) ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,struct snd_pcm_sw_params*) ;
 int snd_pcm_oss_format_from (int ) ;
 int snd_pcm_oss_format_to (int) ;
 int snd_pcm_oss_period_size (struct snd_pcm_substream*,struct snd_pcm_sw_params*,struct snd_pcm_sw_params*) ;
 int snd_pcm_oss_plugin_clear (struct snd_pcm_substream*) ;
 int snd_pcm_plug_alloc (struct snd_pcm_substream*,size_t) ;
 size_t snd_pcm_plug_client_size (struct snd_pcm_substream*,size_t) ;
 int snd_pcm_plug_format_plugins (struct snd_pcm_substream*,struct snd_pcm_sw_params*,struct snd_pcm_sw_params*) ;
 int snd_pcm_plug_slave_format (int,struct snd_mask*) ;
 int snd_pcm_plug_slave_size (struct snd_pcm_substream*,size_t) ;
 int snd_pcm_plugin_append (struct snd_pcm_plugin*) ;
 int snd_pcm_plugin_build_io (struct snd_pcm_substream*,struct snd_pcm_sw_params*,struct snd_pcm_plugin**) ;
 int snd_pcm_plugin_insert (struct snd_pcm_plugin*) ;
 int snd_printd (char*,...) ;
 int vfree (int ) ;
 int vmalloc (size_t) ;

__attribute__((used)) static int snd_pcm_oss_change_params(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_pcm_hw_params *params, *sparams;
 struct snd_pcm_sw_params *sw_params;
 ssize_t oss_buffer_size, oss_period_size;
 size_t oss_frame_size;
 int err;
 int direct;
 int format, sformat, n;
 struct snd_mask sformat_mask;
 struct snd_mask mask;

 if (mutex_lock_interruptible(&oss_runtime(runtime)->oss.params_lock))
  return -EINTR;
 sw_params = kmalloc(sizeof(*sw_params), GFP_KERNEL);
 params = kmalloc(sizeof(*params), GFP_KERNEL);
 sparams = kmalloc(sizeof(*sparams), GFP_KERNEL);
 if (!sw_params || !params || !sparams) {
  snd_printd("No memory\n");
  err = -ENOMEM;
  goto failure;
 }

 if (atomic_read(&substream->mmap_count))
  direct = 1;
 else
  direct = oss_substream(substream)->oss.setup.direct;

 _snd_pcm_hw_params_any(sparams);
 _snd_pcm_hw_param_setinteger(sparams, SNDRV_PCM_HW_PARAM_PERIODS);
 _snd_pcm_hw_param_min(sparams, SNDRV_PCM_HW_PARAM_PERIODS, 2, 0);
 snd_mask_none(&mask);
 if (atomic_read(&substream->mmap_count))
  snd_mask_set(&mask, SNDRV_PCM_ACCESS_MMAP_INTERLEAVED);
 else {
  snd_mask_set(&mask, SNDRV_PCM_ACCESS_RW_INTERLEAVED);
  if (!direct)
   snd_mask_set(&mask, SNDRV_PCM_ACCESS_RW_NONINTERLEAVED);
 }
 err = snd_pcm_hw_param_mask(substream, sparams, SNDRV_PCM_HW_PARAM_ACCESS, &mask);
 if (err < 0) {
  snd_printd("No usable accesses\n");
  err = -EINVAL;
  goto failure;
 }
 choose_rate(substream, sparams, oss_runtime(runtime)->oss.rate);
 snd_pcm_hw_param_near(substream, sparams, SNDRV_PCM_HW_PARAM_CHANNELS, oss_runtime(runtime)->oss.channels, ((void*)0));

 format = snd_pcm_oss_format_from(oss_runtime(runtime)->oss.format);

 sformat_mask = *hw_param_mask(sparams, SNDRV_PCM_HW_PARAM_FORMAT);
 if (direct)
  sformat = format;
 else
  sformat = snd_pcm_plug_slave_format(format, &sformat_mask);

 if (sformat < 0 || !snd_mask_test(&sformat_mask, sformat)) {
  for (sformat = 0; sformat <= SNDRV_PCM_FORMAT_LAST; sformat++) {
   if (snd_mask_test(&sformat_mask, sformat) &&
       snd_pcm_oss_format_to(sformat) >= 0)
    break;
  }
  if (sformat > SNDRV_PCM_FORMAT_LAST) {
   snd_printd("Cannot find a format!!!\n");
   err = -EINVAL;
   goto failure;
  }
 }
 err = _snd_pcm_hw_param_set(sparams, SNDRV_PCM_HW_PARAM_FORMAT, sformat, 0);
 if (err < 0)
  goto failure;

 if (direct) {
  memcpy(params, sparams, sizeof(*params));
 } else {
  _snd_pcm_hw_params_any(params);
  _snd_pcm_hw_param_set(params, SNDRV_PCM_HW_PARAM_ACCESS,
          SNDRV_PCM_ACCESS_RW_INTERLEAVED, 0);
  _snd_pcm_hw_param_set(params, SNDRV_PCM_HW_PARAM_FORMAT,
          snd_pcm_oss_format_from(oss_runtime(runtime)->oss.format), 0);
  _snd_pcm_hw_param_set(params, SNDRV_PCM_HW_PARAM_CHANNELS,
          oss_runtime(runtime)->oss.channels, 0);
  _snd_pcm_hw_param_set(params, SNDRV_PCM_HW_PARAM_RATE,
          oss_runtime(runtime)->oss.rate, 0);
  pdprintf("client: access = %i, format = %i, channels = %i, rate = %i\n",
    params_access(params), params_format(params),
    params_channels(params), params_rate(params));
 }
 pdprintf("slave: access = %i, format = %i, channels = %i, rate = %i\n",
   params_access(sparams), params_format(sparams),
   params_channels(sparams), params_rate(sparams));

 oss_frame_size = snd_pcm_format_physical_width(params_format(params)) *
    params_channels(params) / 8;
 err = snd_pcm_oss_period_size(substream, params, sparams);
 if (err < 0)
  goto failure;

 n = snd_pcm_plug_slave_size(substream, oss_runtime(runtime)->oss.period_bytes / oss_frame_size);
 err = snd_pcm_hw_param_near(substream, sparams, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, n, ((void*)0));
 if (err < 0)
  goto failure;

 err = snd_pcm_hw_param_near(substream, sparams, SNDRV_PCM_HW_PARAM_PERIODS,
         oss_runtime(runtime)->oss.periods, ((void*)0));
 if (err < 0)
  goto failure;

 snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DROP, ((void*)0));

 if ((err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_HW_PARAMS, sparams)) < 0) {
  snd_printd("HW_PARAMS failed: %i\n", err);
  goto failure;
 }

 memset(sw_params, 0, sizeof(*sw_params));
 if (oss_runtime(runtime)->oss.trigger) {
  sw_params->start_threshold = 1;
 } else {
  sw_params->start_threshold = runtime->boundary;
 }
 if (atomic_read(&substream->mmap_count) ||
     substream->stream == SNDRV_PCM_STREAM_CAPTURE)
  sw_params->stop_threshold = runtime->boundary;
 else
  sw_params->stop_threshold = runtime->buffer_size;
 sw_params->tstamp_mode = SNDRV_PCM_TSTAMP_NONE;
 sw_params->period_step = 1;
 sw_params->avail_min = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
  1 : runtime->period_size;
 if (atomic_read(&substream->mmap_count) ||
     oss_substream(substream)->oss.setup.nosilence) {
  sw_params->silence_threshold = 0;
  sw_params->silence_size = 0;
 } else {
  snd_pcm_uframes_t frames;
  frames = runtime->period_size + 16;
  if (frames > runtime->buffer_size)
   frames = runtime->buffer_size;
  sw_params->silence_threshold = frames;
  sw_params->silence_size = frames;
 }

 if ((err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_SW_PARAMS, sw_params)) < 0) {
  snd_printd("SW_PARAMS failed: %i\n", err);
  goto failure;
 }

 oss_runtime(runtime)->oss.periods = params_periods(sparams);
 oss_period_size = snd_pcm_plug_client_size(substream, params_period_size(sparams));
 if (oss_period_size < 0) {
  err = -EINVAL;
  goto failure;
 }







 oss_period_size *= oss_frame_size;

 oss_buffer_size = oss_period_size * oss_runtime(runtime)->oss.periods;
 if (oss_buffer_size < 0) {
  err = -EINVAL;
  goto failure;
 }

 oss_runtime(runtime)->oss.period_bytes = oss_period_size;
 oss_runtime(runtime)->oss.buffer_bytes = oss_buffer_size;

 pdprintf("oss: period bytes = %i, buffer bytes = %i\n",
   oss_runtime(runtime)->oss.period_bytes,
   oss_runtime(runtime)->oss.buffer_bytes);
 pdprintf("slave: period_size = %i, buffer_size = %i\n",
   params_period_size(sparams),
   params_buffer_size(sparams));

 oss_runtime(runtime)->oss.format = snd_pcm_oss_format_to(params_format(params));
 oss_runtime(runtime)->oss.channels = params_channels(params);
 oss_runtime(runtime)->oss.rate = params_rate(params);

 vfree(oss_runtime(runtime)->oss.buffer);
 oss_runtime(runtime)->oss.buffer = vmalloc(oss_runtime(runtime)->oss.period_bytes);
 if (!oss_runtime(runtime)->oss.buffer) {
  err = -ENOMEM;
  goto failure;
 }

 oss_runtime(runtime)->oss.params = 0;
 oss_runtime(runtime)->oss.prepare = 1;
 oss_runtime(runtime)->oss.buffer_used = 0;
 if (runtime->dma_area)
  snd_pcm_format_set_silence(runtime->format, runtime->dma_area, bytes_to_samples(runtime, runtime->dma_bytes));

 oss_runtime(runtime)->oss.period_frames = snd_pcm_alsa_frames(substream, oss_period_size);

 err = 0;
failure:
 kfree(sw_params);
 kfree(params);
 kfree(sparams);
 mutex_unlock(&oss_runtime(runtime)->oss.params_lock);
 return err;
}
