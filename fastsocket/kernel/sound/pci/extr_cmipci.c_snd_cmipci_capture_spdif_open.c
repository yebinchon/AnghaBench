
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rates; int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct cmipci {int chip_version; scalar_t__ can_96k; } ;


 int CM_OPEN_SPDIF_CAPTURE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_RATE_88200 ;
 int SNDRV_PCM_RATE_96000 ;
 int open_device_check (struct cmipci*,int ,struct snd_pcm_substream*) ;
 TYPE_1__ snd_cmipci_capture_spdif ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int ,int) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmipci_capture_spdif_open(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 if ((err = open_device_check(cm, CM_OPEN_SPDIF_CAPTURE, substream)) < 0)
  return err;
 runtime->hw = snd_cmipci_capture_spdif;
 if (cm->can_96k && !(cm->chip_version == 68)) {
  runtime->hw.rates |= SNDRV_PCM_RATE_88200 |
         SNDRV_PCM_RATE_96000;
  runtime->hw.rate_max = 96000;
 }
 snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 0x40000);
 return 0;
}
