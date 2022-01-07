
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_ac97_update_bits (int ,int,int,int) ;
 int snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_vt1618_aux_put(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{


 snd_ac97_update_bits(snd_kcontrol_chip(kcontrol), 0x5c, 0x0008,
        ucontrol->value.enumerated.item[0] << 3);



 return snd_ac97_update_bits(snd_kcontrol_chip(kcontrol), 0x76, 0x0008,
        ucontrol->value.enumerated.item[0] << 3);
}
