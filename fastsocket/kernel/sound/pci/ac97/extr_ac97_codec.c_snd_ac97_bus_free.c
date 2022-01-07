
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97_bus {int (* private_free ) (struct snd_ac97_bus*) ;struct snd_ac97_bus* pcms; } ;


 int kfree (struct snd_ac97_bus*) ;
 int snd_ac97_bus_proc_done (struct snd_ac97_bus*) ;
 int stub1 (struct snd_ac97_bus*) ;

__attribute__((used)) static int snd_ac97_bus_free(struct snd_ac97_bus *bus)
{
 if (bus) {
  snd_ac97_bus_proc_done(bus);
  kfree(bus->pcms);
  if (bus->private_free)
   bus->private_free(bus);
  kfree(bus);
 }
 return 0;
}
