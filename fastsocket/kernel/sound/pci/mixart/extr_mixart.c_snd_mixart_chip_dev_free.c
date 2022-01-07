
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixart {int dummy; } ;
struct snd_device {struct snd_mixart* device_data; } ;


 int snd_mixart_chip_free (struct snd_mixart*) ;

__attribute__((used)) static int snd_mixart_chip_dev_free(struct snd_device *device)
{
 struct snd_mixart *chip = device->device_data;
 return snd_mixart_chip_free(chip);
}
