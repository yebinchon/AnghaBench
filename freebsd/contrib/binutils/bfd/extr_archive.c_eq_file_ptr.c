
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar_cache {scalar_t__ ptr; } ;
typedef scalar_t__ PTR ;



__attribute__((used)) static int
eq_file_ptr (const PTR p1, const PTR p2)
{
  struct ar_cache *arc1 = (struct ar_cache *) p1;
  struct ar_cache *arc2 = (struct ar_cache *) p2;
  return arc1->ptr == arc2->ptr;
}
