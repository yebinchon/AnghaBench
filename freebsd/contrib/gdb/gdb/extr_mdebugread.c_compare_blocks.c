
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;
typedef scalar_t__ LONGEST ;


 int BLOCK_END (struct block*) ;
 scalar_t__ BLOCK_START (struct block*) ;

__attribute__((used)) static int
compare_blocks (const void *arg1, const void *arg2)
{
  LONGEST addr_diff;
  struct block **b1 = (struct block **) arg1;
  struct block **b2 = (struct block **) arg2;

  addr_diff = (BLOCK_START ((*b1))) - (BLOCK_START ((*b2)));
  if (addr_diff == 0)
    return (BLOCK_END ((*b2))) - (BLOCK_END ((*b1)));
  return addr_diff;
}
