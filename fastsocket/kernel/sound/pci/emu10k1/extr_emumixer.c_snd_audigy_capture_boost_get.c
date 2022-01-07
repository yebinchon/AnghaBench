
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {int ac97; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int AC97_REC_GAIN ;
 unsigned int snd_ac97_read (int ,int ) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_audigy_capture_boost_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;


 val = snd_ac97_read(emu->ac97, AC97_REC_GAIN);
 ucontrol->value.integer.value[0] = !!val;
 return 0;
}
