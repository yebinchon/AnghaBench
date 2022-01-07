
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_device {unsigned char addr; struct snd_i2c_bus* bus; int list; int name; } ;
struct snd_i2c_bus {int devices; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_i2c_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int strlcpy (int ,char const*,int) ;

int snd_i2c_device_create(struct snd_i2c_bus *bus, const char *name,
     unsigned char addr, struct snd_i2c_device **rdevice)
{
 struct snd_i2c_device *device;

 *rdevice = ((void*)0);
 if (snd_BUG_ON(!bus))
  return -EINVAL;
 device = kzalloc(sizeof(*device), GFP_KERNEL);
 if (device == ((void*)0))
  return -ENOMEM;
 device->addr = addr;
 strlcpy(device->name, name, sizeof(device->name));
 list_add_tail(&device->list, &bus->devices);
 device->bus = bus;
 *rdevice = device;
 return 0;
}
