
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_stat {int bytes_alloc; int bytes_req; } ;


 double fragmentation (int ,int ) ;

__attribute__((used)) static int frag_cmp(struct alloc_stat *l, struct alloc_stat *r)
{
 double x, y;

 x = fragmentation(l->bytes_req, l->bytes_alloc);
 y = fragmentation(r->bytes_req, r->bytes_alloc);

 if (x < y)
  return -1;
 else if (x > y)
  return 1;
 return 0;
}
