
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_rme9652 {int ss_channels; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_rme9652_info_thru(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);
 uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 uinfo->count = rme9652->ss_channels;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = 1;
 return 0;
}
