
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct whc_std {int dma_addr; int len; int num_pointers; TYPE_2__* pl_virt; } ;
struct whc_page_list_entry {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct whc {TYPE_1__ wusbhc; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_5__ {int buf_ptr; } ;


 int DIV_ROUND_UP (int,int) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int WHCI_PAGE_SIZE ;
 int cpu_to_le64 (int) ;
 int dma_map_single (int ,TYPE_2__*,size_t,int ) ;
 TYPE_2__* kmalloc (size_t,int ) ;

__attribute__((used)) static int qset_fill_page_list(struct whc *whc, struct whc_std *std, gfp_t mem_flags)
{
 dma_addr_t dma_addr = std->dma_addr;
 dma_addr_t sp, ep;
 size_t pl_len;
 int p;


 if (std->len <= WHCI_PAGE_SIZE) {
  std->num_pointers = 0;
  return 0;
 }

 sp = dma_addr & ~(WHCI_PAGE_SIZE-1);
 ep = dma_addr + std->len;
 std->num_pointers = DIV_ROUND_UP(ep - sp, WHCI_PAGE_SIZE);

 pl_len = std->num_pointers * sizeof(struct whc_page_list_entry);
 std->pl_virt = kmalloc(pl_len, mem_flags);
 if (std->pl_virt == ((void*)0))
  return -ENOMEM;
 std->dma_addr = dma_map_single(whc->wusbhc.dev, std->pl_virt, pl_len, DMA_TO_DEVICE);

 for (p = 0; p < std->num_pointers; p++) {
  std->pl_virt[p].buf_ptr = cpu_to_le64(dma_addr);
  dma_addr = (dma_addr + WHCI_PAGE_SIZE) & ~(WHCI_PAGE_SIZE-1);
 }

 return 0;
}
