
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct chain_allocator {int dummy; } ;
struct bm_block {int hook; } ;


 int BM_BITS_PER_BLOCK ;
 unsigned int DIV_ROUND_UP (unsigned long,int ) ;
 int ENOMEM ;
 struct bm_block* chain_alloc (struct chain_allocator*,int) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int create_bm_block_list(unsigned long pages,
    struct list_head *list,
    struct chain_allocator *ca)
{
 unsigned int nr_blocks = DIV_ROUND_UP(pages, BM_BITS_PER_BLOCK);

 while (nr_blocks-- > 0) {
  struct bm_block *bb;

  bb = chain_alloc(ca, sizeof(struct bm_block));
  if (!bb)
   return -ENOMEM;
  list_add(&bb->hook, list);
 }

 return 0;
}
