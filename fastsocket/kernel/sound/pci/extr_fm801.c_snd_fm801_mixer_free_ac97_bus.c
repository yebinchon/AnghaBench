
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97_bus {struct fm801* private_data; } ;
struct fm801 {int * ac97_bus; } ;



__attribute__((used)) static void snd_fm801_mixer_free_ac97_bus(struct snd_ac97_bus *bus)
{
 struct fm801 *chip = bus->private_data;
 chip->ac97_bus = ((void*)0);
}
