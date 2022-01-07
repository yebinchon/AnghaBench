
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {scalar_t__ dev; scalar_t__ dev_addr; scalar_t__ size; } ;



__attribute__((used)) static bool containing_match(struct dma_debug_entry *a,
        struct dma_debug_entry *b)
{
 if (a->dev != b->dev)
  return 0;

 if ((b->dev_addr <= a->dev_addr) &&
     ((b->dev_addr + b->size) >= (a->dev_addr + a->size)))
  return 1;

 return 0;
}
