
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1938 {int ddma_port; int pci; } ;


 int DMACLEAR ;
 int IRQCONTROL ;
 int SLDM_REG (struct es1938*,int ) ;
 int SLIO_REG (struct es1938*,int ) ;
 int SL_PCI_CONFIG ;
 int SL_PCI_DDMACONTROL ;
 int SL_PCI_LEGACYCONTROL ;
 int outb (int,int ) ;
 int pci_set_master (int ) ;
 int pci_write_config_dword (int ,int ,int ) ;
 int pci_write_config_word (int ,int ,int) ;
 int snd_es1938_reset (struct es1938*) ;

__attribute__((used)) static void snd_es1938_chip_init(struct es1938 *chip)
{

 snd_es1938_reset(chip);




 pci_set_master(chip->pci);


 pci_write_config_word(chip->pci, SL_PCI_LEGACYCONTROL, 0x805f);


 pci_write_config_word(chip->pci, SL_PCI_DDMACONTROL, chip->ddma_port | 1);


 pci_write_config_dword(chip->pci, SL_PCI_CONFIG, 0);


 outb(0xf0, SLIO_REG(chip, IRQCONTROL));


 outb(0, SLDM_REG(chip, DMACLEAR));
}
