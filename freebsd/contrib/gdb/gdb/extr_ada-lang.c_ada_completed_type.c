
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ENUM ;
 int TYPE_FLAGS (struct type*) ;
 int TYPE_FLAG_STUB ;
 char* TYPE_TAG_NAME (struct type*) ;
 struct type* ada_find_any_type (char*) ;

struct type *
ada_completed_type (struct type *type)
{
  CHECK_TYPEDEF (type);
  if (type == ((void*)0) || TYPE_CODE (type) != TYPE_CODE_ENUM
      || (TYPE_FLAGS (type) & TYPE_FLAG_STUB) == 0
      || TYPE_TAG_NAME (type) == ((void*)0))
    return type;
  else
    {
      char *name = TYPE_TAG_NAME (type);
      struct type *type1 = ada_find_any_type (name);
      return (type1 == ((void*)0)) ? type : type1;
    }
}
