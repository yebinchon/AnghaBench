
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 char* TYPE_NAME (struct type*) ;
 char* TYPE_TAG_NAME (struct type*) ;

char *
ada_type_name (struct type *type)
{
  if (type == ((void*)0))
    return ((void*)0);
  else if (TYPE_NAME (type) != ((void*)0))
    return TYPE_NAME (type);
  else
    return TYPE_TAG_NAME (type);
}
