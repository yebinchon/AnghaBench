
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* ada_lookup_struct_elt_type (struct type*,char*,int,int *) ;
 char* ada_variant_discrim_name (struct type*) ;
 struct type* builtin_type_int ;

struct type *
ada_variant_discrim_type (struct type *var_type, struct type *outer_type)
{
  char *name = ada_variant_discrim_name (var_type);
  struct type *type = ada_lookup_struct_elt_type (outer_type, name, 1, ((void*)0));
  if (type == ((void*)0))
    return builtin_type_int;
  else
    return type;
}
