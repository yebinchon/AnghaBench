
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int TYPE_TARGET_TYPE (struct type*) ;
 struct type* check_typedef (int ) ;
 int desc_arity (int ) ;
 struct type* desc_base_type (struct type*) ;
 int desc_bounds_type (struct type*) ;

int
ada_array_arity (struct type *type)
{
  int arity;

  if (type == ((void*)0))
    return 0;

  type = desc_base_type (type);

  arity = 0;
  if (TYPE_CODE (type) == TYPE_CODE_STRUCT)
    return desc_arity (desc_bounds_type (type));
  else
    while (TYPE_CODE (type) == TYPE_CODE_ARRAY)
      {
 arity += 1;
 type = check_typedef (TYPE_TARGET_TYPE (type));
      }

  return arity;
}
