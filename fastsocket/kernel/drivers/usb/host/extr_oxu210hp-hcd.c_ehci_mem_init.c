
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_murb {int dummy; } ;
struct oxu_hcd {int periodic_size; int * pshadow; void** periodic; int periodic_dma; TYPE_1__* mem; int async; scalar_t__* murb_used; void* murb_pool; scalar_t__* qtd_used; scalar_t__* qh_used; } ;
typedef int gfp_t ;
typedef void* __le32 ;
struct TYPE_2__ {void** frame_list; } ;


 void* EHCI_LIST_END ;
 int ENOMEM ;
 int MURB_NUM ;
 int QHEAD_NUM ;
 int QTD_NUM ;
 int ehci_mem_cleanup (struct oxu_hcd*) ;
 void* kcalloc (int,int,int ) ;
 int oxu_dbg (struct oxu_hcd*,char*) ;
 int oxu_qh_alloc (struct oxu_hcd*) ;
 int virt_to_phys (void**) ;

__attribute__((used)) static int ehci_mem_init(struct oxu_hcd *oxu, gfp_t flags)
{
 int i;

 for (i = 0; i < oxu->periodic_size; i++)
  oxu->mem->frame_list[i] = EHCI_LIST_END;
 for (i = 0; i < QHEAD_NUM; i++)
  oxu->qh_used[i] = 0;
 for (i = 0; i < QTD_NUM; i++)
  oxu->qtd_used[i] = 0;

 oxu->murb_pool = kcalloc(MURB_NUM, sizeof(struct oxu_murb), flags);
 if (!oxu->murb_pool)
  goto fail;

 for (i = 0; i < MURB_NUM; i++)
  oxu->murb_used[i] = 0;

 oxu->async = oxu_qh_alloc(oxu);
 if (!oxu->async)
  goto fail;

 oxu->periodic = (__le32 *) &oxu->mem->frame_list;
 oxu->periodic_dma = virt_to_phys(oxu->periodic);

 for (i = 0; i < oxu->periodic_size; i++)
  oxu->periodic[i] = EHCI_LIST_END;


 oxu->pshadow = kcalloc(oxu->periodic_size, sizeof(void *), flags);
 if (oxu->pshadow != ((void*)0))
  return 0;

fail:
 oxu_dbg(oxu, "couldn't init memory\n");
 ehci_mem_cleanup(oxu);
 return -ENOMEM;
}
