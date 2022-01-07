
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 scalar_t__ ada_is_parent_field (struct type*,int) ;
 struct type* check_typedef (int ) ;

struct type *
ada_parent_type (struct type *type)
{
  int i;

  CHECK_TYPEDEF (type);

  if (type == ((void*)0) || TYPE_CODE (type) != TYPE_CODE_STRUCT)
    return ((void*)0);

  for (i = 0; i < TYPE_NFIELDS (type); i += 1)
    if (ada_is_parent_field (type, i))
      return check_typedef (TYPE_FIELD_TYPE (type, i));

  return ((void*)0);
}
