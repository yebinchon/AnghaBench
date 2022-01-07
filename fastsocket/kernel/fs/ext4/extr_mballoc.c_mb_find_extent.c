
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_free_extent {int fe_len; int fe_start; scalar_t__ fe_group; } ;
struct ext4_buddy {int bd_blkbits; scalar_t__ bd_group; int bd_sb; } ;


 int BUG_ON (int) ;
 void* EXT4_MB_BITMAP (struct ext4_buddy*) ;
 int assert_spin_locked (int ) ;
 int ext4_group_lock_ptr (int ,scalar_t__) ;
 scalar_t__ likely (int) ;
 void* mb_find_buddy (struct ext4_buddy*,int,int*) ;
 int mb_find_order_for_block (struct ext4_buddy*,int) ;
 scalar_t__ mb_test_bit (int,void*) ;

__attribute__((used)) static int mb_find_extent(struct ext4_buddy *e4b, int order, int block,
    int needed, struct ext4_free_extent *ex)
{
 int next = block;
 int max;
 int ord;
 void *buddy;

 assert_spin_locked(ext4_group_lock_ptr(e4b->bd_sb, e4b->bd_group));
 BUG_ON(ex == ((void*)0));

 buddy = mb_find_buddy(e4b, order, &max);
 BUG_ON(buddy == ((void*)0));
 BUG_ON(block >= max);
 if (mb_test_bit(block, buddy)) {
  ex->fe_len = 0;
  ex->fe_start = 0;
  ex->fe_group = 0;
  return 0;
 }


 if (likely(order == 0)) {

  order = mb_find_order_for_block(e4b, block);
  block = block >> order;
 }

 ex->fe_len = 1 << order;
 ex->fe_start = block << order;
 ex->fe_group = e4b->bd_group;


 next = next - ex->fe_start;
 ex->fe_len -= next;
 ex->fe_start += next;

 while (needed > ex->fe_len &&
        (buddy = mb_find_buddy(e4b, order, &max))) {

  if (block + 1 >= max)
   break;

  next = (block + 1) * (1 << order);
  if (mb_test_bit(next, EXT4_MB_BITMAP(e4b)))
   break;

  ord = mb_find_order_for_block(e4b, next);

  order = ord;
  block = next >> order;
  ex->fe_len += 1 << order;
 }

 BUG_ON(ex->fe_start + ex->fe_len > (1 << (e4b->bd_blkbits + 3)));
 return ex->fe_len;
}
