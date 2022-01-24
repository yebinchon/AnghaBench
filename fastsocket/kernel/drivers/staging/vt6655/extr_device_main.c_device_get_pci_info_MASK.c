#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
typedef  void* UINT ;
typedef  int U8 ;
typedef  int U16 ;
struct TYPE_3__ {int byRevId; struct pci_dev* pcid; void* ioaddr; void* memaddr; int /*<<< orphan*/  SubVendorID; int /*<<< orphan*/  SubSystemID; } ;
typedef  TYPE_1__* PSDevice ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int PCI_COMMAND ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_REVISION_ID ; 
 int PCI_SUBSYSTEM_ID ; 
 int PCI_SUBSYSTEM_VENDOR_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static BOOL FUNC7(PSDevice pDevice, struct pci_dev* pcid) {

    U16 pci_cmd;
    U8  b;
    UINT cis_addr;
#ifdef	PLICE_DEBUG
	BYTE       pci_config[256];
	BYTE	value =0x00;
	int		ii,j;
	U16	max_lat=0x0000;
	memset(pci_config,0x00,256);
#endif

    FUNC1(pcid, PCI_REVISION_ID, &pDevice->byRevId);
    FUNC2(pcid, PCI_SUBSYSTEM_ID,&pDevice->SubSystemID);
    FUNC2(pcid, PCI_SUBSYSTEM_VENDOR_ID, &pDevice->SubVendorID);
    FUNC2(pcid, PCI_COMMAND, (u16 *) & (pci_cmd));

    FUNC4(pcid);

    pDevice->memaddr = FUNC3(pcid,0);
    pDevice->ioaddr = FUNC3(pcid,1);

#ifdef	DEBUG
//	pDevice->ioaddr = pci_resource_start(pcid, 0);
//	pDevice->memaddr = pci_resource_start(pcid,1);
#endif

    cis_addr = FUNC3(pcid,2);

    pDevice->pcid = pcid;

    FUNC1(pcid, PCI_COMMAND, &b);
    FUNC5(pcid, PCI_COMMAND, (b|PCI_COMMAND_MASTER));

#ifdef	PLICE_DEBUG
   	//pci_read_config_word(pcid,PCI_MAX_LAT,&max_lat);
	//printk("max lat is %x,SubSystemID is %x\n",max_lat,pDevice->SubSystemID);
	//for (ii=0;ii<0xFF;ii++)
	//pci_read_config_word(pcid,PCI_MAX_LAT,&max_lat);
	//max_lat  = 0x20;
	//pci_write_config_word(pcid,PCI_MAX_LAT,max_lat);
	//pci_read_config_word(pcid,PCI_MAX_LAT,&max_lat);
	//printk("max lat is %x\n",max_lat);

	for (ii=0;ii<0xFF;ii++)
	{
		pci_read_config_byte(pcid,ii,&value);
		pci_config[ii] = value;
	}
	for (ii=0,j=1;ii<0x100;ii++,j++)
	{
		if (j %16 == 0)
		{
			printk("%x:",pci_config[ii]);
			printk("\n");
		}
		else
		{
			printk("%x:",pci_config[ii]);
		}
	}
#endif
    return TRUE;
}