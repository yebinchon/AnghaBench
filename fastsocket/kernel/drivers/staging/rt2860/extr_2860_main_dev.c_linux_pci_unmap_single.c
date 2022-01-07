
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_4__ {int pci_dev; } ;
struct TYPE_3__ {scalar_t__ OS_Cookie; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;
typedef TYPE_2__* POS_COOKIE ;


 int pci_unmap_single (int ,int ,size_t,int) ;

void linux_pci_unmap_single(void *handle, dma_addr_t dma_addr, size_t size, int direction)
{
 PRTMP_ADAPTER pAd;
 POS_COOKIE pObj;

 pAd=(PRTMP_ADAPTER)handle;
 pObj = (POS_COOKIE)pAd->OS_Cookie;

 pci_unmap_single(pObj->pci_dev, dma_addr, size, direction);

}
