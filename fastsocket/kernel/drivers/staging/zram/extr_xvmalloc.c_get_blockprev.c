
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct block_header {int prev; } ;


 int PREV_MASK ;

__attribute__((used)) static u32 get_blockprev(struct block_header *block)
{
 return block->prev & PREV_MASK;
}
