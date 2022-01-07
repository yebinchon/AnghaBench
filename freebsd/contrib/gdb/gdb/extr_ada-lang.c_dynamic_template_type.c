
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ DEPRECATED_STREQ (int *,char*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* ada_find_parallel_type (struct type*,char*) ;
 int * ada_type_name (struct type*) ;
 int strlen (int *) ;

__attribute__((used)) static struct type *
dynamic_template_type (struct type *type)
{
  CHECK_TYPEDEF (type);

  if (type == ((void*)0) || TYPE_CODE (type) != TYPE_CODE_STRUCT
      || ada_type_name (type) == ((void*)0))
    return ((void*)0);
  else
    {
      int len = strlen (ada_type_name (type));
      if (len > 6 && DEPRECATED_STREQ (ada_type_name (type) + len - 6, "___XVE"))
 return type;
      else
 return ada_find_parallel_type (type, "___XVE");
    }
}
