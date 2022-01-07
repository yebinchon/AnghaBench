
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

int
ada_is_simple_array (struct type *type)
{
  if (type == ((void*)0))
    return 0;
  CHECK_TYPEDEF (type);
  return (TYPE_CODE (type) == TYPE_CODE_ARRAY
   || (TYPE_CODE (type) == TYPE_CODE_PTR
       && TYPE_CODE (TYPE_TARGET_TYPE (type)) == TYPE_CODE_ARRAY));
}
