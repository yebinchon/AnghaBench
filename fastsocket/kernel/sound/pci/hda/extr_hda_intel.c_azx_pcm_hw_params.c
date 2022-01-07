
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct azx_pcm {struct azx* chip; } ;
struct azx_dev {scalar_t__ format_val; scalar_t__ period_bytes; scalar_t__ bufsize; } ;
struct azx {int dummy; } ;


 int EBUSY ;
 scalar_t__ dsp_is_locked (struct azx_dev*) ;
 int dsp_lock (struct azx_dev*) ;
 int dsp_unlock (struct azx_dev*) ;
 struct azx_dev* get_azx_dev (struct snd_pcm_substream*) ;
 int mark_runtime_wc (struct azx*,struct azx_dev*,struct snd_pcm_substream*,int) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int azx_pcm_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *hw_params)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 struct azx *chip = apcm->chip;
 struct azx_dev *azx_dev = get_azx_dev(substream);
 int ret;

 dsp_lock(azx_dev);
 if (dsp_is_locked(azx_dev)) {
  ret = -EBUSY;
  goto unlock;
 }

 mark_runtime_wc(chip, azx_dev, substream, 0);
 azx_dev->bufsize = 0;
 azx_dev->period_bytes = 0;
 azx_dev->format_val = 0;
 ret = snd_pcm_lib_malloc_pages(substream,
     params_buffer_bytes(hw_params));
 if (ret < 0)
  goto unlock;
 mark_runtime_wc(chip, azx_dev, substream, 1);
 unlock:
 dsp_unlock(azx_dev);
 return ret;
}
