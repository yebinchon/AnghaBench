
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct xv_pool {int flbitmap; int * slbitmap; TYPE_1__* freelist; } ;
struct page {int dummy; } ;
struct TYPE_4__ {size_t prev_offset; size_t next_offset; struct page* next_page; struct page* prev_page; } ;
struct block_header {TYPE_2__ link; } ;
struct TYPE_3__ {size_t offset; struct page* page; } ;


 size_t BITS_PER_LONG ;
 int KM_USER1 ;
 int __clear_bit (size_t,int *) ;
 struct block_header* get_ptr_atomic (struct page*,size_t,int ) ;
 int put_ptr_atomic (struct block_header*,int ) ;

__attribute__((used)) static void remove_block(struct xv_pool *pool, struct page *page, u32 offset,
   struct block_header *block, u32 slindex)
{
 u32 flindex = slindex / BITS_PER_LONG;
 struct block_header *tmpblock;

 if (block->link.prev_page) {
  tmpblock = get_ptr_atomic(block->link.prev_page,
    block->link.prev_offset, KM_USER1);
  tmpblock->link.next_page = block->link.next_page;
  tmpblock->link.next_offset = block->link.next_offset;
  put_ptr_atomic(tmpblock, KM_USER1);
 }

 if (block->link.next_page) {
  tmpblock = get_ptr_atomic(block->link.next_page,
    block->link.next_offset, KM_USER1);
  tmpblock->link.prev_page = block->link.prev_page;
  tmpblock->link.prev_offset = block->link.prev_offset;
  put_ptr_atomic(tmpblock, KM_USER1);
 }


 if (pool->freelist[slindex].page == page
    && pool->freelist[slindex].offset == offset) {

  pool->freelist[slindex].page = block->link.next_page;
  pool->freelist[slindex].offset = block->link.next_offset;

  if (pool->freelist[slindex].page) {
   struct block_header *tmpblock;
   tmpblock = get_ptr_atomic(pool->freelist[slindex].page,
     pool->freelist[slindex].offset,
     KM_USER1);
   tmpblock->link.prev_page = ((void*)0);
   tmpblock->link.prev_offset = 0;
   put_ptr_atomic(tmpblock, KM_USER1);
  } else {

   __clear_bit(slindex % BITS_PER_LONG,
        &pool->slbitmap[flindex]);
   if (!pool->slbitmap[flindex])
    __clear_bit(flindex, &pool->flbitmap);
  }
 }

 block->link.prev_page = ((void*)0);
 block->link.prev_offset = 0;
 block->link.next_page = ((void*)0);
 block->link.next_offset = 0;
}
