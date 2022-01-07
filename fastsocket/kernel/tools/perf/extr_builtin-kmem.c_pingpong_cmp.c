
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_stat {scalar_t__ pingpong; } ;



__attribute__((used)) static int pingpong_cmp(struct alloc_stat *l, struct alloc_stat *r)
{
 if (l->pingpong < r->pingpong)
  return -1;
 else if (l->pingpong > r->pingpong)
  return 1;
 return 0;
}
