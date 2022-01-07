
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_i2c_device {int bus; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_cs8427_reg_read (struct snd_i2c_device*,int ) ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_unlock (int ) ;
 struct snd_i2c_device* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cs8427_in_status_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_i2c_device *device = snd_kcontrol_chip(kcontrol);
 int data;

 snd_i2c_lock(device->bus);
 data = snd_cs8427_reg_read(device, kcontrol->private_value);
 snd_i2c_unlock(device->bus);
 if (data < 0)
  return data;
 ucontrol->value.integer.value[0] = data;
 return 0;
}
