
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_IEC958 ;

__attribute__((used)) static int snd_trident_spdif_stream_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_IEC958;
 uinfo->count = 1;
 return 0;
}
