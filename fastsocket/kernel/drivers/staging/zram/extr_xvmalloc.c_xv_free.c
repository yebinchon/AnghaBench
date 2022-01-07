
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xv_pool {int lock; int total_pages; } ;
struct page {int dummy; } ;
struct block_header {int size; } ;
typedef scalar_t__ page_start ;


 int ALIGN (int,int) ;
 int BLOCK_FREE ;
 struct block_header* BLOCK_NEXT (struct block_header*) ;
 int BUG_ON (scalar_t__) ;
 int KM_USER0 ;
 int PAGE_SIZE ;
 int PREV_FREE ;
 int XV_ALIGN ;
 scalar_t__ XV_MIN_ALLOC_SIZE ;
 int __free_page (struct page*) ;
 scalar_t__ get_blockprev (struct block_header*) ;
 int get_index_for_insert (int) ;
 void* get_ptr_atomic (struct page*,int ,int ) ;
 int insert_block (struct xv_pool*,struct page*,int,struct block_header*) ;
 int put_ptr_atomic (void*,int ) ;
 int remove_block (struct xv_pool*,struct page*,int,struct block_header*,int ) ;
 int set_blockprev (struct block_header*,int) ;
 int set_flag (struct block_header*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat_dec (int *) ;
 scalar_t__ test_flag (struct block_header*,int ) ;

void xv_free(struct xv_pool *pool, struct page *page, u32 offset)
{
 void *page_start;
 struct block_header *block, *tmpblock;

 offset -= XV_ALIGN;

 spin_lock(&pool->lock);

 page_start = get_ptr_atomic(page, 0, KM_USER0);
 block = (struct block_header *)((char *)page_start + offset);


 BUG_ON(test_flag(block, BLOCK_FREE));

 block->size = ALIGN(block->size, XV_ALIGN);

 tmpblock = BLOCK_NEXT(block);
 if (offset + block->size + XV_ALIGN == PAGE_SIZE)
  tmpblock = ((void*)0);


 if (tmpblock && test_flag(tmpblock, BLOCK_FREE)) {




  if (tmpblock->size >= XV_MIN_ALLOC_SIZE) {
   remove_block(pool, page,
        offset + block->size + XV_ALIGN, tmpblock,
        get_index_for_insert(tmpblock->size));
  }
  block->size += tmpblock->size + XV_ALIGN;
 }


 if (test_flag(block, PREV_FREE)) {
  tmpblock = (struct block_header *)((char *)(page_start) +
      get_blockprev(block));
  offset = offset - tmpblock->size - XV_ALIGN;

  if (tmpblock->size >= XV_MIN_ALLOC_SIZE)
   remove_block(pool, page, offset, tmpblock,
        get_index_for_insert(tmpblock->size));

  tmpblock->size += block->size + XV_ALIGN;
  block = tmpblock;
 }


 if (block->size == PAGE_SIZE - XV_ALIGN) {
  put_ptr_atomic(page_start, KM_USER0);
  spin_unlock(&pool->lock);

  __free_page(page);
  stat_dec(&pool->total_pages);
  return;
 }

 set_flag(block, BLOCK_FREE);
 if (block->size >= XV_MIN_ALLOC_SIZE)
  insert_block(pool, page, offset, block);

 if (offset + block->size + XV_ALIGN != PAGE_SIZE) {
  tmpblock = BLOCK_NEXT(block);
  set_flag(tmpblock, PREV_FREE);
  set_blockprev(tmpblock, offset);
 }

 put_ptr_atomic(page_start, KM_USER0);
 spin_unlock(&pool->lock);
}
