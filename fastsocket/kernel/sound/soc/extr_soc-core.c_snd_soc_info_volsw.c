
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct soc_mixer_control {int max; unsigned int shift; unsigned int rshift; } ;
struct TYPE_4__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; scalar_t__ private_value; } ;
struct TYPE_5__ {int max; scalar_t__ min; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int strstr (int ,char*) ;

int snd_soc_info_volsw(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *uinfo)
{
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int max = mc->max;
 unsigned int shift = mc->shift;
 unsigned int rshift = mc->rshift;

 if (max == 1 && !strstr(kcontrol->id.name, " Volume"))
  uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 else
  uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;

 uinfo->count = shift == rshift ? 1 : 2;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = max;
 return 0;
}
