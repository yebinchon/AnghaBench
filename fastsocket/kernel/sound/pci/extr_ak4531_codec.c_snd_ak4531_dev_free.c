
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_ak4531* device_data; } ;
struct snd_ak4531 {int dummy; } ;


 int snd_ak4531_free (struct snd_ak4531*) ;

__attribute__((used)) static int snd_ak4531_dev_free(struct snd_device *device)
{
 struct snd_ak4531 *ak4531 = device->device_data;
 return snd_ak4531_free(ak4531);
}
