
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {struct oxygen* private_data; } ;
struct TYPE_2__ {int (* cleanup ) (struct oxygen*) ;} ;
struct oxygen {scalar_t__ irq; int pci; int mutex; int model_data; TYPE_1__ model; } ;


 int flush_scheduled_work () ;
 int free_irq (scalar_t__,struct oxygen*) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int oxygen_shutdown (struct oxygen*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int stub1 (struct oxygen*) ;

__attribute__((used)) static void oxygen_card_free(struct snd_card *card)
{
 struct oxygen *chip = card->private_data;

 oxygen_shutdown(chip);
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 flush_scheduled_work();
 chip->model.cleanup(chip);
 kfree(chip->model_data);
 mutex_destroy(&chip->mutex);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
}
