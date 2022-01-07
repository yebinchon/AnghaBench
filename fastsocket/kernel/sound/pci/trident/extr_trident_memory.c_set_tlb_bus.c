
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ SNDRV_TRIDENT_PAGE_SIZE ;
 int UNIT_PAGES ;
 int __set_tlb_bus (struct snd_trident*,int,unsigned long,int ) ;

__attribute__((used)) static inline void set_tlb_bus(struct snd_trident *trident, int page,
          unsigned long ptr, dma_addr_t addr)
{
 int i;
 page *= UNIT_PAGES;
 for (i = 0; i < UNIT_PAGES; i++, page++) {
  __set_tlb_bus(trident, page, ptr, addr);
  ptr += SNDRV_TRIDENT_PAGE_SIZE;
  addr += SNDRV_TRIDENT_PAGE_SIZE;
 }
}
