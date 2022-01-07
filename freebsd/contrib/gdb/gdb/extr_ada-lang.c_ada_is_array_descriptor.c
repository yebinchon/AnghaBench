
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_PTR ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 scalar_t__ desc_arity (int ) ;
 int desc_bounds_type (struct type*) ;
 struct type* desc_data_type (struct type*) ;

int
ada_is_array_descriptor (struct type *type)
{
  struct type *data_type = desc_data_type (type);

  if (type == ((void*)0))
    return 0;
  CHECK_TYPEDEF (type);
  return
    data_type != ((void*)0)
    && ((TYPE_CODE (data_type) == TYPE_CODE_PTR
  && TYPE_TARGET_TYPE (data_type) != ((void*)0)
  && TYPE_CODE (TYPE_TARGET_TYPE (data_type)) == TYPE_CODE_ARRAY)
 ||
 TYPE_CODE (data_type) == TYPE_CODE_ARRAY)
    && desc_arity (desc_bounds_type (type)) > 0;
}
