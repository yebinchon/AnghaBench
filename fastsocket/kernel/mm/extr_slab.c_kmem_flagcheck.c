
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int gfpflags; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 scalar_t__ CONFIG_ZONE_DMA_FLAG ;
 int GFP_DMA ;

__attribute__((used)) static void kmem_flagcheck(struct kmem_cache *cachep, gfp_t flags)
{
 if (CONFIG_ZONE_DMA_FLAG) {
  if (flags & GFP_DMA)
   BUG_ON(!(cachep->gfpflags & GFP_DMA));
  else
   BUG_ON(cachep->gfpflags & GFP_DMA);
 }
}
