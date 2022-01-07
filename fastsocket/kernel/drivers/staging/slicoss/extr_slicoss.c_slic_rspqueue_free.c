
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_rspqueue {int num_pages; int * rspbuf; scalar_t__ pageindex; scalar_t__ offset; scalar_t__* paddr; int ** vaddr; } ;
struct adapter {int pcidev; struct slic_rspqueue rspqueue; } ;


 int PAGE_SIZE ;
 int pci_free_consistent (int ,int ,int *,scalar_t__) ;

__attribute__((used)) static void slic_rspqueue_free(struct adapter *adapter)
{
 int i;
 struct slic_rspqueue *rspq = &adapter->rspqueue;

 for (i = 0; i < rspq->num_pages; i++) {
  if (rspq->vaddr[i]) {
   pci_free_consistent(adapter->pcidev, PAGE_SIZE,
         rspq->vaddr[i], rspq->paddr[i]);
  }
  rspq->vaddr[i] = ((void*)0);
  rspq->paddr[i] = 0;
 }
 rspq->offset = 0;
 rspq->pageindex = 0;
 rspq->rspbuf = ((void*)0);
}
