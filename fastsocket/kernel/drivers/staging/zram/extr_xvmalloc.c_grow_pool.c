
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xv_pool {int lock; int total_pages; } ;
struct page {int dummy; } ;
struct block_header {scalar_t__ size; } ;
typedef int gfp_t ;


 int BLOCK_FREE ;
 int ENOMEM ;
 int KM_USER0 ;
 scalar_t__ PAGE_SIZE ;
 int PREV_FREE ;
 scalar_t__ XV_ALIGN ;
 struct page* alloc_page (int ) ;
 int clear_flag (struct block_header*,int ) ;
 struct block_header* get_ptr_atomic (struct page*,int ,int ) ;
 int insert_block (struct xv_pool*,struct page*,int ,struct block_header*) ;
 int put_ptr_atomic (struct block_header*,int ) ;
 int set_blockprev (struct block_header*,int ) ;
 int set_flag (struct block_header*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat_inc (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int grow_pool(struct xv_pool *pool, gfp_t flags)
{
 struct page *page;
 struct block_header *block;

 page = alloc_page(flags);
 if (unlikely(!page))
  return -ENOMEM;

 stat_inc(&pool->total_pages);

 spin_lock(&pool->lock);
 block = get_ptr_atomic(page, 0, KM_USER0);

 block->size = PAGE_SIZE - XV_ALIGN;
 set_flag(block, BLOCK_FREE);
 clear_flag(block, PREV_FREE);
 set_blockprev(block, 0);

 insert_block(pool, page, 0, block);

 put_ptr_atomic(block, KM_USER0);
 spin_unlock(&pool->lock);

 return 0;
}
