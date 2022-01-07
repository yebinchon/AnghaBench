
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct emu10k1x {unsigned int* spdif_bits; } ;


 scalar_t__ SPCS0 ;
 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 int snd_emu10k1x_ptr_write (struct emu10k1x*,scalar_t__,int ,unsigned int) ;
 struct emu10k1x* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_emu10k1x_spdif_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct emu10k1x *emu = snd_kcontrol_chip(kcontrol);
 unsigned int idx = snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 int change;
 unsigned int val;

 val = (ucontrol->value.iec958.status[0] << 0) |
  (ucontrol->value.iec958.status[1] << 8) |
  (ucontrol->value.iec958.status[2] << 16) |
  (ucontrol->value.iec958.status[3] << 24);
 change = val != emu->spdif_bits[idx];
 if (change) {
  snd_emu10k1x_ptr_write(emu, SPCS0 + idx, 0, val);
  emu->spdif_bits[idx] = val;
 }
 return change;
}
