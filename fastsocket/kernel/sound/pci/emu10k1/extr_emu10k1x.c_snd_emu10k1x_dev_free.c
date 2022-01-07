
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct emu10k1x* device_data; } ;
struct emu10k1x {int dummy; } ;


 int snd_emu10k1x_free (struct emu10k1x*) ;

__attribute__((used)) static int snd_emu10k1x_dev_free(struct snd_device *device)
{
 struct emu10k1x *chip = device->device_data;
 return snd_emu10k1x_free(chip);
}
