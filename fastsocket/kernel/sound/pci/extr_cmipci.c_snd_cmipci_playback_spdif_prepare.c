
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cmipci {int dig_pcm_status; int * channel; scalar_t__ can_ac3_hw; } ;


 size_t CM_CH_PLAY ;
 int IEC958_AES0_NONAUDIO ;
 int setup_spdif_playback (struct cmipci*,struct snd_pcm_substream*,int,int) ;
 int snd_cmipci_pcm_prepare (struct cmipci*,int *,struct snd_pcm_substream*) ;
 struct cmipci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cmipci_playback_spdif_prepare(struct snd_pcm_substream *substream)
{
 struct cmipci *cm = snd_pcm_substream_chip(substream);
 int err, do_ac3;

 if (cm->can_ac3_hw)
  do_ac3 = cm->dig_pcm_status & IEC958_AES0_NONAUDIO;
 else
  do_ac3 = 1;
 if ((err = setup_spdif_playback(cm, substream, 1, do_ac3)) < 0)
  return err;
 return snd_cmipci_pcm_prepare(cm, &cm->channel[CM_CH_PLAY], substream);
}
