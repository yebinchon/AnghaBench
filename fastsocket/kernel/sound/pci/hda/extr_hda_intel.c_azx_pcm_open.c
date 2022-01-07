
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int rates; int formats; int channels_max; int channels_min; } ;
struct snd_pcm_runtime {struct azx_dev* private_data; TYPE_2__ hw; } ;
struct TYPE_3__ {int (* open ) (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;int (* close ) (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; int rates; int formats; int channels_max; int channels_min; } ;
struct azx_pcm {int codec; struct azx* chip; struct hda_pcm_stream** hinfo; } ;
struct azx_dev {scalar_t__ running; struct snd_pcm_substream* substream; } ;
struct azx {int open_mutex; int reg_lock; scalar_t__ align_buffer_size; } ;


 int EBUSY ;
 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 struct azx_dev* azx_assign_device (struct azx*,struct snd_pcm_substream*) ;
 TYPE_2__ azx_pcm_hw ;
 int azx_release_device (struct azx_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_power_down (int ) ;
 int snd_hda_power_up_d3wait (int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_pcm_limit_hw_rates (struct snd_pcm_runtime*) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;
 int stub2 (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;

__attribute__((used)) static int azx_pcm_open(struct snd_pcm_substream *substream)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 struct hda_pcm_stream *hinfo = apcm->hinfo[substream->stream];
 struct azx *chip = apcm->chip;
 struct azx_dev *azx_dev;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long flags;
 int err;
 int buff_step;

 mutex_lock(&chip->open_mutex);
 azx_dev = azx_assign_device(chip, substream);
 if (azx_dev == ((void*)0)) {
  mutex_unlock(&chip->open_mutex);
  return -EBUSY;
 }
 runtime->hw = azx_pcm_hw;
 runtime->hw.channels_min = hinfo->channels_min;
 runtime->hw.channels_max = hinfo->channels_max;
 runtime->hw.formats = hinfo->formats;
 runtime->hw.rates = hinfo->rates;
 snd_pcm_limit_hw_rates(runtime);
 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 if (chip->align_buffer_size)






  buff_step = 128;
 else




  buff_step = 4;

 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
       buff_step);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
       buff_step);
 snd_hda_power_up_d3wait(apcm->codec);
 err = hinfo->ops.open(hinfo, apcm->codec, substream);
 if (err < 0) {
  azx_release_device(azx_dev);
  snd_hda_power_down(apcm->codec);
  mutex_unlock(&chip->open_mutex);
  return err;
 }
 snd_pcm_limit_hw_rates(runtime);

 if (snd_BUG_ON(!runtime->hw.channels_min) ||
     snd_BUG_ON(!runtime->hw.channels_max) ||
     snd_BUG_ON(!runtime->hw.formats) ||
     snd_BUG_ON(!runtime->hw.rates)) {
  azx_release_device(azx_dev);
  hinfo->ops.close(hinfo, apcm->codec, substream);
  snd_hda_power_down(apcm->codec);
  mutex_unlock(&chip->open_mutex);
  return -EINVAL;
 }
 spin_lock_irqsave(&chip->reg_lock, flags);
 azx_dev->substream = substream;
 azx_dev->running = 0;
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 runtime->private_data = azx_dev;
 snd_pcm_set_sync(substream);
 mutex_unlock(&chip->open_mutex);
 return 0;
}
