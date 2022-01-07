
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct xv_pool {int flbitmap; int * slbitmap; TYPE_1__* freelist; } ;
struct page {int dummy; } ;
struct TYPE_4__ {size_t prev_offset; size_t next_offset; struct page* prev_page; struct page* next_page; } ;
struct block_header {TYPE_2__ link; int size; } ;
struct TYPE_3__ {size_t offset; struct page* page; } ;


 size_t BITS_PER_LONG ;
 int KM_USER1 ;
 int __set_bit (size_t,int *) ;
 size_t get_index_for_insert (int ) ;
 struct block_header* get_ptr_atomic (struct page*,size_t,int ) ;
 int put_ptr_atomic (struct block_header*,int ) ;

__attribute__((used)) static void insert_block(struct xv_pool *pool, struct page *page, u32 offset,
   struct block_header *block)
{
 u32 flindex, slindex;
 struct block_header *nextblock;

 slindex = get_index_for_insert(block->size);
 flindex = slindex / BITS_PER_LONG;

 block->link.prev_page = ((void*)0);
 block->link.prev_offset = 0;
 block->link.next_page = pool->freelist[slindex].page;
 block->link.next_offset = pool->freelist[slindex].offset;
 pool->freelist[slindex].page = page;
 pool->freelist[slindex].offset = offset;

 if (block->link.next_page) {
  nextblock = get_ptr_atomic(block->link.next_page,
     block->link.next_offset, KM_USER1);
  nextblock->link.prev_page = page;
  nextblock->link.prev_offset = offset;
  put_ptr_atomic(nextblock, KM_USER1);

  return;
 }

 __set_bit(slindex % BITS_PER_LONG, &pool->slbitmap[flindex]);
 __set_bit(flindex, &pool->flbitmap);
}
