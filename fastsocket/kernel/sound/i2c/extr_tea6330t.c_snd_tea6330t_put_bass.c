
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tea6330t {int max_bass; unsigned char bass; unsigned char* regs; int bus; int device; scalar_t__ equalizer; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 size_t TEA6330T_SADDR_BASS ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_sendbytes (int ,unsigned char*,int) ;
 int snd_i2c_unlock (int ) ;
 struct tea6330t* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_tea6330t_put_bass(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct tea6330t *tea = snd_kcontrol_chip(kcontrol);
 int change, err;
 unsigned char bytes[2];
 unsigned char val1;

 val1 = ucontrol->value.integer.value[0] % (tea->max_bass + 1);
 snd_i2c_lock(tea->bus);
 tea->bass = val1;
 val1 += tea->equalizer ? 7 : 3;
 change = tea->regs[TEA6330T_SADDR_BASS] != val1;
 bytes[0] = TEA6330T_SADDR_BASS;
 bytes[1] = tea->regs[TEA6330T_SADDR_BASS] = val1;
 if ((err = snd_i2c_sendbytes(tea->device, bytes, 2)) < 0)
  change = err;
 snd_i2c_unlock(tea->bus);
 return change;
}
