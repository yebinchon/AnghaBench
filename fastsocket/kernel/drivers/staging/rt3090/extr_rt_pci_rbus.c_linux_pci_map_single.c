
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_6__ {int pci_dev; } ;
struct TYPE_5__ {scalar_t__ OS_Cookie; } ;
struct TYPE_4__ {void* pSrcBufData; size_t SrcBufLen; } ;
typedef TYPE_1__* PTX_BLK ;
typedef TYPE_2__* PRTMP_ADAPTER ;
typedef TYPE_3__* POS_COOKIE ;


 int pci_map_single (int ,void*,size_t,int) ;

dma_addr_t linux_pci_map_single(void *handle, void *ptr, size_t size, int sd_idx, int direction)
{
 PRTMP_ADAPTER pAd;
 POS_COOKIE pObj;
 pAd = (PRTMP_ADAPTER)handle;
 pObj = (POS_COOKIE)pAd->OS_Cookie;

 if (sd_idx == 1)
 {
  PTX_BLK pTxBlk;
  pTxBlk = (PTX_BLK)ptr;
  return pci_map_single(pObj->pci_dev, pTxBlk->pSrcBufData, pTxBlk->SrcBufLen, direction);
 }
 else
 {
  return pci_map_single(pObj->pci_dev, ptr, size, direction);
 }

}
