
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int PCF9554_REG_OUTPUT ;
 int snd_ice1712_6fire_read_pca (struct snd_ice1712*,int ) ;
 int snd_ice1712_6fire_write_pca (struct snd_ice1712*,int ,unsigned char) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ice1712_6fire_select_input_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int data, ndata;

 if ((data = snd_ice1712_6fire_read_pca(ice, PCF9554_REG_OUTPUT)) < 0)
  return data;
 ndata = data & ~3;
 ndata |= (ucontrol->value.integer.value[0] & 3);
 if (data != ndata) {
  snd_ice1712_6fire_write_pca(ice, PCF9554_REG_OUTPUT, (unsigned char)ndata);
  return 1;
 }
 return 0;
}
