
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {scalar_t__ dev_addr; scalar_t__ dev; } ;



__attribute__((used)) static bool exact_match(struct dma_debug_entry *a, struct dma_debug_entry *b)
{
 return ((a->dev_addr == b->dev_addr) &&
  (a->dev == b->dev)) ? 1 : 0;
}
