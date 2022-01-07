
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int * ac97_bus; } ;
struct snd_ac97_bus {struct snd_ymfpci* private_data; } ;



__attribute__((used)) static void snd_ymfpci_mixer_free_ac97_bus(struct snd_ac97_bus *bus)
{
 struct snd_ymfpci *chip = bus->private_data;
 chip->ac97_bus = ((void*)0);
}
