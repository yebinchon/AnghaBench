
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int __add_to_swap_cache (struct page*,int ) ;
 int radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;

int add_to_swap_cache(struct page *page, swp_entry_t entry, gfp_t gfp_mask)
{
 int error;

 error = radix_tree_preload(gfp_mask);
 if (!error) {
  error = __add_to_swap_cache(page, entry);
  radix_tree_preload_end();
 }
 return error;
}
