
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int count; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;

__attribute__((used)) static int snd_korg1212_control_phase_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 uinfo->count = (kcontrol->private_value >= 8) ? 2 : 1;
 return 0;
}
