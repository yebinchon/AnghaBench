
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_page {int dummy; } ;
struct swap_map_handle {scalar_t__ k; int cur_swap; struct swap_map_page* cur; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int alloc_swapdev_block (int ) ;
 scalar_t__ get_zeroed_page (int ) ;
 int release_swap_writer (struct swap_map_handle*) ;
 int root_swap ;

__attribute__((used)) static int get_swap_writer(struct swap_map_handle *handle)
{
 handle->cur = (struct swap_map_page *)get_zeroed_page(GFP_KERNEL);
 if (!handle->cur)
  return -ENOMEM;
 handle->cur_swap = alloc_swapdev_block(root_swap);
 if (!handle->cur_swap) {
  release_swap_writer(handle);
  return -ENOSPC;
 }
 handle->k = 0;
 return 0;
}
