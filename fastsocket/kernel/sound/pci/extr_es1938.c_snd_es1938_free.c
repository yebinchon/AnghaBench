
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1938 {scalar_t__ irq; int pci; scalar_t__ rmidi; } ;


 int ESSSB_IREG_MPU401CONTROL ;
 int IRQCONTROL ;
 int SLIO_REG (struct es1938*,int ) ;
 int free_irq (scalar_t__,struct es1938*) ;
 int kfree (struct es1938*) ;
 int outb (int,int ) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_es1938_free_gameport (struct es1938*) ;
 int snd_es1938_mixer_bits (struct es1938*,int ,int,int ) ;

__attribute__((used)) static int snd_es1938_free(struct es1938 *chip)
{

 outb(0x00, SLIO_REG(chip, IRQCONTROL));
 if (chip->rmidi)
  snd_es1938_mixer_bits(chip, ESSSB_IREG_MPU401CONTROL, 0x40, 0);

 snd_es1938_free_gameport(chip);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
