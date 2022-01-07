
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printk_map {scalar_t__ addr; } ;



__attribute__((used)) static int printk_cmp(const void *a, const void *b)
{
 const struct printk_map *pa = a;
 const struct printk_map *pb = b;

 if (pa->addr < pb->addr)
  return -1;
 if (pa->addr > pb->addr)
  return 1;

 return 0;
}
