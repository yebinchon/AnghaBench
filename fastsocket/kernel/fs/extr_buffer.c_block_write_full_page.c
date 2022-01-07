
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
typedef int get_block_t ;


 int block_write_full_page_endio (struct page*,int *,struct writeback_control*,int ) ;
 int end_buffer_async_write ;

int block_write_full_page(struct page *page, get_block_t *get_block,
   struct writeback_control *wbc)
{
 return block_write_full_page_endio(page, get_block, wbc,
        end_buffer_async_write);
}
