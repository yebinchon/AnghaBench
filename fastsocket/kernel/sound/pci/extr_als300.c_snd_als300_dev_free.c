
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_als300* device_data; } ;
struct snd_als300 {int dummy; } ;


 int snd_als300_free (struct snd_als300*) ;

__attribute__((used)) static int snd_als300_dev_free(struct snd_device *device)
{
 struct snd_als300 *chip = device->device_data;
 return snd_als300_free(chip);
}
