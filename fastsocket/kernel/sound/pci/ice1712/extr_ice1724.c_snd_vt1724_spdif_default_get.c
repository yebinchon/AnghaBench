
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {int dummy; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int SPDIF_CTRL ;
 int decode_spdif_bits (int *,unsigned int) ;
 unsigned int inw (int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_vt1724_spdif_default_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 val = inw(ICEMT1724(ice, SPDIF_CTRL));
 decode_spdif_bits(&ucontrol->value.iec958, val);
 return 0;
}
