
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {unsigned int private_value; } ;
struct snd_emu10k1 {unsigned int** i2c_capture_volume; unsigned int i2c_capture_source; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
typedef int ngain ;


 int ADC_ATTEN_ADCL ;
 int ADC_ATTEN_ADCR ;
 int EINVAL ;
 int snd_emu10k1_i2c_write (struct snd_emu10k1*,int ,int ) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_audigy_i2c_volume_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int ogain;
 unsigned int ngain;
 unsigned int source_id;
 int change = 0;

 source_id = kcontrol->private_value;


 if (source_id >= 2)
  return -EINVAL;
 ogain = emu->i2c_capture_volume[source_id][0];
 ngain = ucontrol->value.integer.value[0];
 if (ngain > 0xff)
  return 0;
 if (ogain != ngain) {
  if (emu->i2c_capture_source == source_id)
   snd_emu10k1_i2c_write(emu, ADC_ATTEN_ADCL, ((ngain) & 0xff) );
  emu->i2c_capture_volume[source_id][0] = ngain;
  change = 1;
 }
 ogain = emu->i2c_capture_volume[source_id][1];
 ngain = ucontrol->value.integer.value[1];
 if (ngain > 0xff)
  return 0;
 if (ogain != ngain) {
  if (emu->i2c_capture_source == source_id)
   snd_emu10k1_i2c_write(emu, ADC_ATTEN_ADCR, ((ngain) & 0xff));
  emu->i2c_capture_volume[source_id][1] = ngain;
  change = 1;
 }

 return change;
}
