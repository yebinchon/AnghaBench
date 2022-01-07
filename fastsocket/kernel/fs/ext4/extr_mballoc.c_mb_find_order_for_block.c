
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_buddy {int bd_blkbits; } ;


 int BUG_ON (int) ;
 void* EXT4_MB_BITMAP (struct ext4_buddy*) ;
 void* EXT4_MB_BUDDY (struct ext4_buddy*) ;
 int mb_test_bit (int,void*) ;

__attribute__((used)) static int mb_find_order_for_block(struct ext4_buddy *e4b, int block)
{
 int order = 1;
 void *bb;

 BUG_ON(EXT4_MB_BITMAP(e4b) == EXT4_MB_BUDDY(e4b));
 BUG_ON(block >= (1 << (e4b->bd_blkbits + 3)));

 bb = EXT4_MB_BUDDY(e4b);
 while (order <= e4b->bd_blkbits + 1) {
  block = block >> 1;
  if (!mb_test_bit(block, bb)) {

   return order;
  }
  bb += 1 << (e4b->bd_blkbits - order);
  order++;
 }
 return 0;
}
