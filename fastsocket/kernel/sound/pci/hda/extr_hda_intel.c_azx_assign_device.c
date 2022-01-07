
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int number; int stream; TYPE_1__* pcm; } ;
struct azx_dev {int opened; int assigned_key; } ;
struct azx {int playback_index_offset; int playback_streams; int capture_index_offset; int capture_streams; struct azx_dev* azx_dev; } ;
struct TYPE_2__ {int device; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dsp_is_locked (struct azx_dev*) ;
 int dsp_lock (struct azx_dev*) ;
 int dsp_unlock (struct azx_dev*) ;

__attribute__((used)) static inline struct azx_dev *
azx_assign_device(struct azx *chip, struct snd_pcm_substream *substream)
{
 int dev, i, nums;
 struct azx_dev *res = ((void*)0);

 int key = (substream->pcm->device << 16) | (substream->number << 2) |
  (substream->stream + 1);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  dev = chip->playback_index_offset;
  nums = chip->playback_streams;
 } else {
  dev = chip->capture_index_offset;
  nums = chip->capture_streams;
 }
 for (i = 0; i < nums; i++, dev++) {
  struct azx_dev *azx_dev = &chip->azx_dev[dev];
  dsp_lock(azx_dev);
  if (!azx_dev->opened && !dsp_is_locked(azx_dev)) {
   res = azx_dev;
   if (res->assigned_key == key) {
    res->opened = 1;
    res->assigned_key = key;
    dsp_unlock(azx_dev);
    return azx_dev;
   }
  }
  dsp_unlock(azx_dev);
 }
 if (res) {
  dsp_lock(res);
  res->opened = 1;
  res->assigned_key = key;
  dsp_unlock(res);
 }
 return res;
}
