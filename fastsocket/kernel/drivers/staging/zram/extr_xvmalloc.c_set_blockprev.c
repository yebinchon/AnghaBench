
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct block_header {int prev; } ;


 int FLAGS_MASK ;

__attribute__((used)) static void set_blockprev(struct block_header *block, u16 new_offset)
{
 block->prev = new_offset | (block->prev & FLAGS_MASK);
}
