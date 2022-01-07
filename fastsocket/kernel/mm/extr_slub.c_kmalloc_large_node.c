
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int __GFP_COMP ;
 int __GFP_NOTRACK ;
 struct page* alloc_pages_node (int,int,int ) ;
 int get_order (size_t) ;
 int kmemleak_alloc (void*,size_t,int,int) ;
 void* page_address (struct page*) ;

__attribute__((used)) static void *kmalloc_large_node(size_t size, gfp_t flags, int node)
{
 struct page *page;
 void *ptr = ((void*)0);

 flags |= __GFP_COMP | __GFP_NOTRACK;
 page = alloc_pages_node(node, flags, get_order(size));
 if (page)
  ptr = page_address(page);

 kmemleak_alloc(ptr, size, 1, flags);
 return ptr;
}
