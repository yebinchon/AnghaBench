
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bt87x {scalar_t__ irq; int pci; scalar_t__ mmio; } ;


 int free_irq (scalar_t__,struct snd_bt87x*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct snd_bt87x*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_bt87x_stop (struct snd_bt87x*) ;

__attribute__((used)) static int snd_bt87x_free(struct snd_bt87x *chip)
{
 if (chip->mmio)
  snd_bt87x_stop(chip);
 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 if (chip->mmio)
  iounmap(chip->mmio);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
