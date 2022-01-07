
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lx6464es {scalar_t__ irq; int pci; int port_plx_remapped; int port_dsp_bar; } ;


 int free_irq (scalar_t__,struct lx6464es*) ;
 int ioport_unmap (int ) ;
 int iounmap (int ) ;
 int kfree (struct lx6464es*) ;
 int lx_irq_disable (struct lx6464es*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int snd_lx6464es_free(struct lx6464es *chip)
{
 snd_printdd("->snd_lx6464es_free\n");

 lx_irq_disable(chip);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

 iounmap(chip->port_dsp_bar);
 ioport_unmap(chip->port_plx_remapped);

 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);

 kfree(chip);

 return 0;
}
