
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97_bus {int** used_slots; int bus_lock; } ;
struct ac97_pcm {unsigned short aslots; int cur_dbl; size_t stream; struct snd_ac97_bus* bus; TYPE_1__* r; } ;
struct TYPE_2__ {int* rslots; int * codec; } ;


 int get_slot_reg (struct ac97_pcm*,int,int,int) ;
 int snd_ac97_update_power (int ,int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_ac97_pcm_close(struct ac97_pcm *pcm)
{
 struct snd_ac97_bus *bus;
 unsigned short slots = pcm->aslots;
 int i, cidx;
 bus = pcm->bus;
 spin_lock_irq(&pcm->bus->bus_lock);
 for (i = 3; i < 12; i++) {
  if (!(slots & (1 << i)))
   continue;
  for (cidx = 0; cidx < 4; cidx++)
   bus->used_slots[pcm->stream][cidx] &= ~(1 << i);
 }
 pcm->aslots = 0;
 pcm->cur_dbl = 0;
 spin_unlock_irq(&pcm->bus->bus_lock);
 return 0;
}
