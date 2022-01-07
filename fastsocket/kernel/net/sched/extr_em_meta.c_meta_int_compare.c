
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meta_obj {scalar_t__ value; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static int meta_int_compare(struct meta_obj *a, struct meta_obj *b)
{



 if (unlikely(a->value == b->value))
  return 0;
 else if (a->value < b->value)
  return -1;
 else
  return 1;
}
