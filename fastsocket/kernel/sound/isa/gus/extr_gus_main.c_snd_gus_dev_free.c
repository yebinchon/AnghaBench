
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;
struct snd_device {struct snd_gus_card* device_data; } ;


 int snd_gus_free (struct snd_gus_card*) ;

__attribute__((used)) static int snd_gus_dev_free(struct snd_device *device)
{
 struct snd_gus_card *gus = device->device_data;
 return snd_gus_free(gus);
}
