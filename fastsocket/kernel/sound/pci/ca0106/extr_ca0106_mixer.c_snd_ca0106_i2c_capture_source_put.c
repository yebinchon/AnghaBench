
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ca0106 {unsigned int i2c_capture_source; } ;


 int EINVAL ;
 int ca0106_set_i2c_capture_source (struct snd_ca0106*,unsigned int,int ) ;
 struct snd_ca0106* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ca0106_i2c_capture_source_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ca0106 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int source_id;
 int change = 0;




 source_id = ucontrol->value.enumerated.item[0] ;
 if (source_id >= 4)
  return -EINVAL;
 change = (emu->i2c_capture_source != source_id);
 if (change) {
  ca0106_set_i2c_capture_source(emu, source_id, 0);
 }
        return change;
}
