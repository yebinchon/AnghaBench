
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 struct type* TYPE_BASECLASS (struct type*,int) ;
 scalar_t__ TYPE_NAME (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 int strcmp (scalar_t__,scalar_t__) ;

int
is_ancestor (struct type *base, struct type *dclass)
{
  int i;

  CHECK_TYPEDEF (base);
  CHECK_TYPEDEF (dclass);

  if (base == dclass)
    return 1;
  if (TYPE_NAME (base) && TYPE_NAME (dclass) &&
      !strcmp (TYPE_NAME (base), TYPE_NAME (dclass)))
    return 1;

  for (i = 0; i < TYPE_N_BASECLASSES (dclass); i++)
    if (is_ancestor (base, TYPE_BASECLASS (dclass, i)))
      return 1;

  return 0;
}
