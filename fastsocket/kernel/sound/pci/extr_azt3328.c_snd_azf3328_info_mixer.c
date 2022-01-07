
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {TYPE_2__ value; scalar_t__ count; int type; } ;
struct azf3328_mixer_reg {int mask; scalar_t__ stereo; } ;


 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int snd_azf3328_dbgcallenter () ;
 int snd_azf3328_dbgcallleave () ;
 int snd_azf3328_mixer_reg_decode (struct azf3328_mixer_reg*,int ) ;

__attribute__((used)) static int
snd_azf3328_info_mixer(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct azf3328_mixer_reg reg;

 snd_azf3328_dbgcallenter();
 snd_azf3328_mixer_reg_decode(&reg, kcontrol->private_value);
 uinfo->type = reg.mask == 1 ?
  SNDRV_CTL_ELEM_TYPE_BOOLEAN : SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = reg.stereo + 1;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = reg.mask;
 snd_azf3328_dbgcallleave();
 return 0;
}
