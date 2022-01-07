
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_cs5530* device_data; } ;
struct snd_cs5530 {int dummy; } ;


 int snd_cs5530_free (struct snd_cs5530*) ;

__attribute__((used)) static int snd_cs5530_dev_free(struct snd_device *device)
{
 struct snd_cs5530 *chip = device->device_data;
 return snd_cs5530_free(chip);
}
