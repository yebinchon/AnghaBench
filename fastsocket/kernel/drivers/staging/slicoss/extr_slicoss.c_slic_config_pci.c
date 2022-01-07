
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_FAST_BACK ;
 int PCI_COMMAND_INVALIDATE ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void slic_config_pci(struct pci_dev *pcidev)
{
 u16 pci_command;
 u16 new_command;

 pci_read_config_word(pcidev, PCI_COMMAND, &pci_command);

 new_command = pci_command | PCI_COMMAND_MASTER
     | PCI_COMMAND_MEMORY
     | PCI_COMMAND_INVALIDATE
     | PCI_COMMAND_PARITY | PCI_COMMAND_SERR | PCI_COMMAND_FAST_BACK;
 if (pci_command != new_command)
  pci_write_config_word(pcidev, PCI_COMMAND, new_command);
}
