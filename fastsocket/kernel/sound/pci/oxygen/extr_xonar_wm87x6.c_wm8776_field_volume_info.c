
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int min; int max; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;

__attribute__((used)) static int wm8776_field_volume_info(struct snd_kcontrol *ctl,
        struct snd_ctl_elem_info *info)
{
 info->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 info->count = 1;
 info->value.integer.min = (ctl->private_value >> 8) & 0xf;
 info->value.integer.max = (ctl->private_value >> 12) & 0xf;
 return 0;
}
