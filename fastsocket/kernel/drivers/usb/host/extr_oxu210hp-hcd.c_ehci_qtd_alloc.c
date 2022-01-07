
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {int* qtd_used; int mem_lock; TYPE_1__* mem; } ;
struct ehci_qtd {int qtd_dma; int qtd_list; void* hw_alt_next; void* hw_next; int hw_token; } ;
struct TYPE_2__ {int * qtd_pool; } ;


 void* EHCI_LIST_END ;
 int INIT_LIST_HEAD (int *) ;
 int QTD_NUM ;
 int QTD_STS_HALT ;
 int cpu_to_le32 (int ) ;
 int memset (struct ehci_qtd*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virt_to_phys (struct ehci_qtd*) ;

__attribute__((used)) static struct ehci_qtd *ehci_qtd_alloc(struct oxu_hcd *oxu)
{
 int i;
 struct ehci_qtd *qtd = ((void*)0);

 spin_lock(&oxu->mem_lock);

 for (i = 0; i < QTD_NUM; i++)
  if (!oxu->qtd_used[i])
   break;

 if (i < QTD_NUM) {
  qtd = (struct ehci_qtd *) &oxu->mem->qtd_pool[i];
  memset(qtd, 0, sizeof *qtd);

  qtd->hw_token = cpu_to_le32(QTD_STS_HALT);
  qtd->hw_next = EHCI_LIST_END;
  qtd->hw_alt_next = EHCI_LIST_END;
  INIT_LIST_HEAD(&qtd->qtd_list);

  qtd->qtd_dma = virt_to_phys(qtd);

  oxu->qtd_used[i] = 1;
 }

 spin_unlock(&oxu->mem_lock);

 return qtd;
}
