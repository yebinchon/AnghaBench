
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int files_lock; scalar_t__ shutdown; } ;
struct hda_bus {struct snd_card* card; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void snd_hda_unlock_devices(struct hda_bus *bus)
{
 struct snd_card *card = bus->card;

 card = bus->card;
 spin_lock(&card->files_lock);
 card->shutdown = 0;
 spin_unlock(&card->files_lock);
}
