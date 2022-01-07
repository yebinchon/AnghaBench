
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int * PSDevice ;


 int device_free_info (int *) ;
 int * pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void device_remove1(struct pci_dev *pcid)
{
    PSDevice pDevice=pci_get_drvdata(pcid);

    if (pDevice==((void*)0))
        return;
    device_free_info(pDevice);

}
