
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int * ada_type_name (struct type*) ;
 int * strstr (int *,char*) ;

int
ada_is_packed_array_type (struct type *type)
{
  if (type == ((void*)0))
    return 0;
  CHECK_TYPEDEF (type);
  return
    ada_type_name (type) != ((void*)0)
    && strstr (ada_type_name (type), "___XP") != ((void*)0);
}
