
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {size_t stream; } ;
struct TYPE_2__ {int (* close ) (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; } ;
struct azx_pcm {int codec; struct azx* chip; struct hda_pcm_stream** hinfo; } ;
struct azx_dev {scalar_t__ running; int * substream; } ;
struct azx {int open_mutex; int reg_lock; } ;


 int azx_release_device (struct azx_dev*) ;
 struct azx_dev* get_azx_dev (struct snd_pcm_substream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_power_down (int ) ;
 struct azx_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hda_pcm_stream*,int ,struct snd_pcm_substream*) ;

__attribute__((used)) static int azx_pcm_close(struct snd_pcm_substream *substream)
{
 struct azx_pcm *apcm = snd_pcm_substream_chip(substream);
 struct hda_pcm_stream *hinfo = apcm->hinfo[substream->stream];
 struct azx *chip = apcm->chip;
 struct azx_dev *azx_dev = get_azx_dev(substream);
 unsigned long flags;

 mutex_lock(&chip->open_mutex);
 spin_lock_irqsave(&chip->reg_lock, flags);
 azx_dev->substream = ((void*)0);
 azx_dev->running = 0;
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 azx_release_device(azx_dev);
 hinfo->ops.close(hinfo, apcm->codec, substream);
 snd_hda_power_down(apcm->codec);
 mutex_unlock(&chip->open_mutex);
 return 0;
}
