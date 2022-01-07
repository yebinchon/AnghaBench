
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linked_page {void* data; struct linked_page* next; } ;
struct chain_allocator {unsigned int used_space; struct linked_page* chain; int safe_needed; int gfp_mask; } ;


 unsigned int LINKED_PAGE_DATA_SIZE ;
 struct linked_page* get_image_page (int ,int ) ;

__attribute__((used)) static void *chain_alloc(struct chain_allocator *ca, unsigned int size)
{
 void *ret;

 if (LINKED_PAGE_DATA_SIZE - ca->used_space < size) {
  struct linked_page *lp;

  lp = get_image_page(ca->gfp_mask, ca->safe_needed);
  if (!lp)
   return ((void*)0);

  lp->next = ca->chain;
  ca->chain = lp;
  ca->used_space = 0;
 }
 ret = ca->chain->data + ca->used_space;
 ca->used_space += size;
 return ret;
}
