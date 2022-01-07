
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CLASS ;
 struct type** virtual_base_list (struct type*) ;

int
virtual_base_index (struct type *base, struct type *dclass)
{
  struct type *vbase;
  int i;

  if ((TYPE_CODE (dclass) != TYPE_CODE_CLASS) ||
      (TYPE_CODE (base) != TYPE_CODE_CLASS))
    return -1;

  i = 0;
  vbase = virtual_base_list (dclass)[0];
  while (vbase)
    {
      if (vbase == base)
 break;
      vbase = virtual_base_list (dclass)[++i];
    }

  return vbase ? i : -1;
}
