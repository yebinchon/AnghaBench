
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_CLASS ;
 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_FIELD_VIRTUAL (struct type*,int) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 scalar_t__ has_vtable (struct type*) ;

struct type *
primary_base_class (struct type *dclass)
{




  int i;

  if (TYPE_CODE (dclass) != TYPE_CODE_CLASS)
    return ((void*)0);

  for (i = 0; i < TYPE_N_BASECLASSES (dclass); i++)
    if (!TYPE_FIELD_VIRTUAL (dclass, i) &&
 has_vtable (TYPE_FIELD_TYPE (dclass, i)))
      return TYPE_FIELD_TYPE (dclass, i);

  return ((void*)0);
}
