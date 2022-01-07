
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct ak4114* device_data; } ;
struct ak4114 {int dummy; } ;


 int snd_ak4114_free (struct ak4114*) ;

__attribute__((used)) static int snd_ak4114_dev_free(struct snd_device *device)
{
 struct ak4114 *chip = device->device_data;
 snd_ak4114_free(chip);
 return 0;
}
