
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm {int info_flags; char* name; scalar_t__ device; TYPE_2__* card; TYPE_1__* streams; } ;
struct TYPE_7__ {int reg_mask; scalar_t__ reg; } ;
struct TYPE_8__ {TYPE_3__ oss; } ;
struct TYPE_6__ {size_t number; } ;
struct TYPE_5__ {scalar_t__ substream_count; } ;


 int SNDRV_OSS_INFO_DEV_AUDIO ;
 int SNDRV_PCM_INFO_HALF_DUPLEX ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int* adsp_map ;
 int* dsp_map ;
 TYPE_4__* oss_pcm (struct snd_pcm*) ;
 int register_oss_dsp (struct snd_pcm*,int) ;
 int snd_oss_info_register (int ,size_t,char*) ;
 int snd_pcm_oss_proc_init (struct snd_pcm*) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static int snd_pcm_oss_register_minor(struct snd_pcm *pcm)
{
 oss_pcm(pcm)->oss.reg = 0;
 if (dsp_map[pcm->card->number] == (int)pcm->device) {
  char name[128];
  int duplex;
  register_oss_dsp(pcm, 0);
  duplex = (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream_count > 0 &&
         pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream_count &&
         !(pcm->info_flags & SNDRV_PCM_INFO_HALF_DUPLEX));
  sprintf(name, "%s%s", pcm->name, duplex ? " (DUPLEX)" : "");





  oss_pcm(pcm)->oss.reg++;
  oss_pcm(pcm)->oss.reg_mask |= 1;
 }
 if (adsp_map[pcm->card->number] == (int)pcm->device) {
  register_oss_dsp(pcm, 1);
  oss_pcm(pcm)->oss.reg++;
  oss_pcm(pcm)->oss.reg_mask |= 2;
 }

 if (oss_pcm(pcm)->oss.reg)
  snd_pcm_oss_proc_init(pcm);

 return 0;
}
