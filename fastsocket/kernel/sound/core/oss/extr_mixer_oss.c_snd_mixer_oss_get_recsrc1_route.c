
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {scalar_t__ private_data; } ;
struct snd_mixer_oss_file {int dummy; } ;
struct slot {int * numid; } ;


 size_t SNDRV_MIXER_OSS_ITEM_CROUTE ;
 int snd_mixer_oss_get_volume1_sw (struct snd_mixer_oss_file*,struct snd_mixer_oss_slot*,int ,int*,int*,int) ;

__attribute__((used)) static int snd_mixer_oss_get_recsrc1_route(struct snd_mixer_oss_file *fmixer,
        struct snd_mixer_oss_slot *pslot,
        int *active)
{
 struct slot *slot = (struct slot *)pslot->private_data;
 int left, right;

 left = right = 1;
 snd_mixer_oss_get_volume1_sw(fmixer, pslot, slot->numid[SNDRV_MIXER_OSS_ITEM_CROUTE], &left, &right, 1);
 *active = (left || right) ? 1 : 0;
 return 0;
}
