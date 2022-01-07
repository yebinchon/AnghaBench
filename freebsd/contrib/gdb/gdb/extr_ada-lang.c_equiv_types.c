
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_STREQ (int *,int *) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_STRUCT ;
 int * ada_type_name (struct type*) ;

__attribute__((used)) static int
equiv_types (struct type *type0, struct type *type1)
{
  if (type0 == type1)
    return 1;
  if (type0 == ((void*)0) || type1 == ((void*)0)
      || TYPE_CODE (type0) != TYPE_CODE (type1))
    return 0;
  if ((TYPE_CODE (type0) == TYPE_CODE_STRUCT
       || TYPE_CODE (type0) == TYPE_CODE_ENUM)
      && ada_type_name (type0) != ((void*)0) && ada_type_name (type1) != ((void*)0)
      && DEPRECATED_STREQ (ada_type_name (type0), ada_type_name (type1)))
    return 1;

  return 0;
}
