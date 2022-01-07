
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


 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int SPDIF_CFG ;
 int VT1724_CFG_SPDIF_OUT_EN ;
 int inb (int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_vt1724_spdif_sw_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 ucontrol->value.integer.value[0] = inb(ICEREG1724(ice, SPDIF_CFG)) &
  VT1724_CFG_SPDIF_OUT_EN ? 1 : 0;
 return 0;
}
