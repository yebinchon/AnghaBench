
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_assign_table {char* name; int index; } ;
struct snd_mixer_oss {int dummy; } ;
struct slot {int dummy; } ;


 int SNDRV_MIXER_OSS_ITEM_CROUTE ;
 int SNDRV_MIXER_OSS_ITEM_CSWITCH ;
 int SNDRV_MIXER_OSS_ITEM_CVOLUME ;
 int SNDRV_MIXER_OSS_ITEM_GLOBAL ;
 int SNDRV_MIXER_OSS_ITEM_GROUTE ;
 int SNDRV_MIXER_OSS_ITEM_GSWITCH ;
 int SNDRV_MIXER_OSS_ITEM_GVOLUME ;
 int SNDRV_MIXER_OSS_ITEM_PROUTE ;
 int SNDRV_MIXER_OSS_ITEM_PSWITCH ;
 int SNDRV_MIXER_OSS_ITEM_PVOLUME ;
 int snd_mixer_oss_build_test (struct snd_mixer_oss*,struct slot*,char*,int ,int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int snd_mixer_oss_build_test_all(struct snd_mixer_oss *mixer,
     struct snd_mixer_oss_assign_table *ptr,
     struct slot *slot)
{
 char str[64];
 int err;

 err = snd_mixer_oss_build_test(mixer, slot, ptr->name, ptr->index,
           SNDRV_MIXER_OSS_ITEM_GLOBAL);
 if (err)
  return err;
 sprintf(str, "%s Switch", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_GSWITCH);
 if (err)
  return err;
 sprintf(str, "%s Route", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_GROUTE);
 if (err)
  return err;
 sprintf(str, "%s Volume", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_GVOLUME);
 if (err)
  return err;
 sprintf(str, "%s Playback Switch", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_PSWITCH);
 if (err)
  return err;
 sprintf(str, "%s Playback Route", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_PROUTE);
 if (err)
  return err;
 sprintf(str, "%s Playback Volume", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_PVOLUME);
 if (err)
  return err;
 sprintf(str, "%s Capture Switch", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_CSWITCH);
 if (err)
  return err;
 sprintf(str, "%s Capture Route", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_CROUTE);
 if (err)
  return err;
 sprintf(str, "%s Capture Volume", ptr->name);
 err = snd_mixer_oss_build_test(mixer, slot, str, ptr->index,
           SNDRV_MIXER_OSS_ITEM_CVOLUME);
 if (err)
  return err;

 return 0;
}
