
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct hda_bus* device_data; } ;
struct hda_bus {int shutdown; } ;


 int snd_hda_bus_free (struct hda_bus*) ;

__attribute__((used)) static int snd_hda_bus_dev_free(struct snd_device *device)
{
 struct hda_bus *bus = device->device_data;
 bus->shutdown = 1;
 return snd_hda_bus_free(bus);
}
