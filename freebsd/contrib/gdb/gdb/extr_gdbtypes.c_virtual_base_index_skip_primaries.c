
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CLASS ;
 struct type* TYPE_PRIMARY_BASE (struct type*) ;
 scalar_t__ TYPE_RUNTIME_PTR (struct type*) ;
 struct type** virtual_base_list (struct type*) ;

int
virtual_base_index_skip_primaries (struct type *base, struct type *dclass)
{
  struct type *vbase;
  int i, j;
  struct type *primary;

  if ((TYPE_CODE (dclass) != TYPE_CODE_CLASS) ||
      (TYPE_CODE (base) != TYPE_CODE_CLASS))
    return -1;

  primary = TYPE_RUNTIME_PTR (dclass) ? TYPE_PRIMARY_BASE (dclass) : ((void*)0);

  j = -1;
  i = 0;
  vbase = virtual_base_list (dclass)[0];
  while (vbase)
    {
      if (!primary || (virtual_base_index_skip_primaries (vbase, primary) < 0))
 j++;
      if (vbase == base)
 break;
      vbase = virtual_base_list (dclass)[++i];
    }

  return vbase ? j : -1;
}
