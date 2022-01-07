
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_FN_FIELDLIST1 (struct type*,int) ;
 int TYPE_FN_FIELDLIST_LENGTH (struct type*,int) ;
 scalar_t__ TYPE_FN_FIELD_VIRTUAL_P (int ,int) ;
 int TYPE_NFN_FIELDS (struct type*) ;
 struct type* primary_base_class (struct type*) ;

int
count_virtual_fns (struct type *dclass)
{
  int fn, oi;
  int vfuncs;


  struct type *pbc = primary_base_class (dclass);
  if (pbc)
    vfuncs = count_virtual_fns (pbc);
  else
    vfuncs = 0;

  for (fn = 0; fn < TYPE_NFN_FIELDS (dclass); fn++)
    for (oi = 0; oi < TYPE_FN_FIELDLIST_LENGTH (dclass, fn); oi++)
      if (TYPE_FN_FIELD_VIRTUAL_P (TYPE_FN_FIELDLIST1 (dclass, fn), oi))
 vfuncs++;

  return vfuncs;
}
