
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var_map_elt {scalar_t__ old; } ;



__attribute__((used)) static int
var_map_eq (const void *x, const void *y)
{
  const struct var_map_elt *a = (const struct var_map_elt *) x;
  const struct var_map_elt *b = (const struct var_map_elt *) y;
  return a->old == b->old;
}
