
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_stat {scalar_t__ ptr; } ;



__attribute__((used)) static int ptr_cmp(struct alloc_stat *l, struct alloc_stat *r)
{
 if (l->ptr < r->ptr)
  return -1;
 else if (l->ptr > r->ptr)
  return 1;
 return 0;
}
