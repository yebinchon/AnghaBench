
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 int ada_array_arity (struct type*) ;
 struct type* ada_array_element_type (struct type*,int) ;
 scalar_t__ ada_is_array_descriptor (struct type*) ;
 int ada_is_character_type (struct type*) ;
 scalar_t__ ada_is_simple_array (struct type*) ;

int
ada_is_string_type (struct type *type)
{
  CHECK_TYPEDEF (type);
  if (type != ((void*)0)
      && TYPE_CODE (type) != TYPE_CODE_PTR
      && (ada_is_simple_array (type) || ada_is_array_descriptor (type))
      && ada_array_arity (type) == 1)
    {
      struct type *elttype = ada_array_element_type (type, 1);

      return ada_is_character_type (elttype);
    }
  else
    return 0;
}
