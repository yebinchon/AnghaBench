
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_vu_meter {int saturated; } ;
struct vx_core {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vx_get_audio_vu_meter (struct vx_core*,int,int,struct vx_vu_meter*) ;

__attribute__((used)) static int vx_saturation_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *chip = snd_kcontrol_chip(kcontrol);
 struct vx_vu_meter meter[2];
 int audio = kcontrol->private_value & 0xff;

 vx_get_audio_vu_meter(chip, audio, 1, meter);
 ucontrol->value.integer.value[0] = meter[0].saturated;
 ucontrol->value.integer.value[1] = meter[1].saturated;
 return 0;
}
