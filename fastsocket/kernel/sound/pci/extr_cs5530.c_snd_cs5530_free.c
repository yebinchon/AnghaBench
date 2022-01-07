
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs5530 {int pci; } ;


 int kfree (struct snd_cs5530*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;

__attribute__((used)) static int snd_cs5530_free(struct snd_cs5530 *chip)
{
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
