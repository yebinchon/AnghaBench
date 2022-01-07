
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb {int dummy; } ;
struct snd_device {struct snd_sb* device_data; } ;


 int snd_sbdsp_free (struct snd_sb*) ;

__attribute__((used)) static int snd_sbdsp_dev_free(struct snd_device *device)
{
 struct snd_sb *chip = device->device_data;
 return snd_sbdsp_free(chip);
}
