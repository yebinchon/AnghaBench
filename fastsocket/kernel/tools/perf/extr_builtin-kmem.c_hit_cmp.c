
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_stat {scalar_t__ hit; } ;



__attribute__((used)) static int hit_cmp(struct alloc_stat *l, struct alloc_stat *r)
{
 if (l->hit < r->hit)
  return -1;
 else if (l->hit > r->hit)
  return 1;
 return 0;
}
