
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {int dummy; } ;
struct snd_device {struct snd_pcxhr* device_data; } ;


 int pcxhr_chip_free (struct snd_pcxhr*) ;

__attribute__((used)) static int pcxhr_chip_dev_free(struct snd_device *device)
{
 struct snd_pcxhr *chip = device->device_data;
 return pcxhr_chip_free(chip);
}
