
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_device {int (* private_free ) (struct snd_i2c_device*) ;int list; scalar_t__ bus; } ;


 int kfree (struct snd_i2c_device*) ;
 int list_del (int *) ;
 int stub1 (struct snd_i2c_device*) ;

int snd_i2c_device_free(struct snd_i2c_device *device)
{
 if (device->bus)
  list_del(&device->list);
 if (device->private_free)
  device->private_free(device);
 kfree(device);
 return 0;
}
