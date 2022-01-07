
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_ep {int dma_counter; int lch; } ;
typedef int dma_addr_t ;


 scalar_t__ cpu_is_omap15xx () ;
 int omap_get_dma_src_pos (int ) ;

__attribute__((used)) static u16 dma_src_len(struct omap_ep *ep, dma_addr_t start)
{
 dma_addr_t end;




 if (cpu_is_omap15xx())
  return 0;

 end = omap_get_dma_src_pos(ep->lch);
 if (end == ep->dma_counter)
  return 0;

 end |= start & (0xffff << 16);
 if (end < start)
  end += 0x10000;
 return end - start;
}
