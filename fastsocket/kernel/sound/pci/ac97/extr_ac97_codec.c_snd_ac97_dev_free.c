
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_ac97* device_data; } ;
struct snd_ac97 {int dummy; } ;


 int snd_ac97_free (struct snd_ac97*) ;
 int snd_ac97_powerdown (struct snd_ac97*) ;

__attribute__((used)) static int snd_ac97_dev_free(struct snd_device *device)
{
 struct snd_ac97 *ac97 = device->device_data;
 snd_ac97_powerdown(ac97);
 return snd_ac97_free(ac97);
}
