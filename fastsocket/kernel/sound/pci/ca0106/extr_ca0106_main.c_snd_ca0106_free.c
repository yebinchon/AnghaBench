
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ area; } ;
struct snd_ca0106 {scalar_t__ irq; int pci; int * res_port; TYPE_1__ buffer; } ;


 int ca0106_stop_chip (struct snd_ca0106*) ;
 int free_irq (scalar_t__,struct snd_ca0106*) ;
 int kfree (struct snd_ca0106*) ;
 int pci_disable_device (int ) ;
 int release_and_free_resource (int *) ;
 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static int snd_ca0106_free(struct snd_ca0106 *chip)
{
 if (chip->res_port != ((void*)0)) {

  ca0106_stop_chip(chip);
 }
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);


 if (chip->buffer.area)
  snd_dma_free_pages(&chip->buffer);



 release_and_free_resource(chip->res_port);

 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
