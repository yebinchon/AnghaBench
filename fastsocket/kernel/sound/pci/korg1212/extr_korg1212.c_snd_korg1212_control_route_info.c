
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int * channelName ;
 int kAudioChannels ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_korg1212_control_route_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = (kcontrol->private_value >= 8) ? 2 : 1;
 uinfo->value.enumerated.items = kAudioChannels;
 if (uinfo->value.enumerated.item > kAudioChannels-1) {
  uinfo->value.enumerated.item = kAudioChannels-1;
 }
 strcpy(uinfo->value.enumerated.name, channelName[uinfo->value.enumerated.item]);
 return 0;
}
