
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int dummy; } ;


 scalar_t__ BLOCK_END (struct block const*) ;
 scalar_t__ BLOCK_START (struct block const*) ;

int
contained_in (const struct block *a, const struct block *b)
{
  if (!a || !b)
    return 0;
  return BLOCK_START (a) >= BLOCK_START (b)
    && BLOCK_END (a) <= BLOCK_END (b);
}
