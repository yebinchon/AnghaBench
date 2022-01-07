
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct aw2* device_data; } ;
struct aw2 {scalar_t__ irq; int pci; scalar_t__ iobase_virt; int saa7146; } ;


 int free_irq (scalar_t__,void*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct aw2*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_aw2_saa7146_free (int *) ;

__attribute__((used)) static int snd_aw2_dev_free(struct snd_device *device)
{
 struct aw2 *chip = device->device_data;


 snd_aw2_saa7146_free(&chip->saa7146);


 if (chip->irq >= 0)
  free_irq(chip->irq, (void *)chip);

 if (chip->iobase_virt)
  iounmap(chip->iobase_virt);

 pci_release_regions(chip->pci);

 pci_disable_device(chip->pci);

 kfree(chip);

 return 0;
}
