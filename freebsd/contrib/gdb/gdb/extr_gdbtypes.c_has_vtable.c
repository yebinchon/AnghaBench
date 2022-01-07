
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ B_TST (scalar_t__,int) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CLASS ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 scalar_t__ TYPE_FIELD_VIRTUAL_BITS (struct type*) ;
 int TYPE_FN_FIELDLIST1 (struct type*,int) ;
 scalar_t__ TYPE_FN_FIELDLISTS (struct type*) ;
 scalar_t__ TYPE_FN_FIELD_VIRTUAL_P (int ,int ) ;
 int TYPE_NFN_FIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;

int
has_vtable (struct type *dclass)
{



  int i;

  if (TYPE_CODE (dclass) != TYPE_CODE_CLASS)
    return 0;


  if (TYPE_FIELD_VIRTUAL_BITS (dclass))
    for (i = 0; i < TYPE_N_BASECLASSES (dclass); i++)
      if (B_TST (TYPE_FIELD_VIRTUAL_BITS (dclass), i))
 return 1;


  if (TYPE_FN_FIELDLISTS (dclass))
    for (i = 0; i < TYPE_NFN_FIELDS (dclass); i++)
      if (TYPE_FN_FIELD_VIRTUAL_P (TYPE_FN_FIELDLIST1 (dclass, i), 0))
 return 1;


  if (TYPE_FIELD_VIRTUAL_BITS (dclass))
    for (i = 0; i < TYPE_N_BASECLASSES (dclass); i++)
      if ((!B_TST (TYPE_FIELD_VIRTUAL_BITS (dclass), i)) &&
   (has_vtable (TYPE_FIELD_TYPE (dclass, i))))
 return 1;


  return 0;
}
