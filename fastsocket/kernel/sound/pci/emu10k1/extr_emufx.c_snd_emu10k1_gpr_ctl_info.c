
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_emu10k1_fx8010_ctl {scalar_t__ min; int max; int vcount; } ;
struct TYPE_3__ {scalar_t__ min; int max; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int snd_emu10k1_gpr_ctl_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 struct snd_emu10k1_fx8010_ctl *ctl =
  (struct snd_emu10k1_fx8010_ctl *) kcontrol->private_value;

 if (ctl->min == 0 && ctl->max == 1)
  uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 else
  uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = ctl->vcount;
 uinfo->value.integer.min = ctl->min;
 uinfo->value.integer.max = ctl->max;
 return 0;
}
