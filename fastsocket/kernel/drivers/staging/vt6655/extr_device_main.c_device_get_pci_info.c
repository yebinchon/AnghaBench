
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
typedef void* UINT ;
typedef int U8 ;
typedef int U16 ;
struct TYPE_3__ {int byRevId; struct pci_dev* pcid; void* ioaddr; void* memaddr; int SubVendorID; int SubSystemID; } ;
typedef TYPE_1__* PSDevice ;
typedef int BYTE ;
typedef int BOOL ;


 int PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 int PCI_REVISION_ID ;
 int PCI_SUBSYSTEM_ID ;
 int PCI_SUBSYSTEM_VENDOR_ID ;
 int TRUE ;
 int memset (int*,int,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int *) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int printk (char*,...) ;

__attribute__((used)) static BOOL device_get_pci_info(PSDevice pDevice, struct pci_dev* pcid) {

    U16 pci_cmd;
    U8 b;
    UINT cis_addr;
    pci_read_config_byte(pcid, PCI_REVISION_ID, &pDevice->byRevId);
    pci_read_config_word(pcid, PCI_SUBSYSTEM_ID,&pDevice->SubSystemID);
    pci_read_config_word(pcid, PCI_SUBSYSTEM_VENDOR_ID, &pDevice->SubVendorID);
    pci_read_config_word(pcid, PCI_COMMAND, (u16 *) & (pci_cmd));

    pci_set_master(pcid);

    pDevice->memaddr = pci_resource_start(pcid,0);
    pDevice->ioaddr = pci_resource_start(pcid,1);






    cis_addr = pci_resource_start(pcid,2);

    pDevice->pcid = pcid;

    pci_read_config_byte(pcid, PCI_COMMAND, &b);
    pci_write_config_byte(pcid, PCI_COMMAND, (b|PCI_COMMAND_MASTER));
    return TRUE;
}
