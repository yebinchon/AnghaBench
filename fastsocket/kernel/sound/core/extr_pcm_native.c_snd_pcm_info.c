
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* ops; struct snd_pcm_runtime* runtime; int name; int number; int stream; struct snd_pcm_str* pstr; struct snd_pcm* pcm; } ;
struct snd_pcm_str {scalar_t__ substream_opened; scalar_t__ substream_count; } ;
struct snd_pcm_runtime {int sync; } ;
struct snd_pcm_info {int sync; int subname; scalar_t__ subdevices_avail; scalar_t__ subdevices_count; int dev_subclass; int dev_class; int name; int id; int subdevice; int stream; int device; int card; } ;
struct snd_pcm {int dev_subclass; int dev_class; int name; int id; int device; TYPE_1__* card; } ;
struct TYPE_4__ {int (* ioctl ) (struct snd_pcm_substream*,int ,struct snd_pcm_info*) ;} ;
struct TYPE_3__ {int number; } ;


 int SNDRV_PCM_IOCTL1_INFO ;
 int memset (struct snd_pcm_info*,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int stub1 (struct snd_pcm_substream*,int ,struct snd_pcm_info*) ;

int snd_pcm_info(struct snd_pcm_substream *substream, struct snd_pcm_info *info)
{
 struct snd_pcm_runtime *runtime;
 struct snd_pcm *pcm = substream->pcm;
 struct snd_pcm_str *pstr = substream->pstr;

 memset(info, 0, sizeof(*info));
 info->card = pcm->card->number;
 info->device = pcm->device;
 info->stream = substream->stream;
 info->subdevice = substream->number;
 strlcpy(info->id, pcm->id, sizeof(info->id));
 strlcpy(info->name, pcm->name, sizeof(info->name));
 info->dev_class = pcm->dev_class;
 info->dev_subclass = pcm->dev_subclass;
 info->subdevices_count = pstr->substream_count;
 info->subdevices_avail = pstr->substream_count - pstr->substream_opened;
 strlcpy(info->subname, substream->name, sizeof(info->subname));
 runtime = substream->runtime;

 if (runtime) {
  info->sync = runtime->sync;
  substream->ops->ioctl(substream, SNDRV_PCM_IOCTL1_INFO, info);
 }
 return 0;
}
