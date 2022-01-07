
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ca0106 {int i2c_capture_source; } ;


 struct snd_ca0106* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ca0106_i2c_capture_source_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ca0106 *emu = snd_kcontrol_chip(kcontrol);

 ucontrol->value.enumerated.item[0] = emu->i2c_capture_source;
 return 0;
}
