
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 char* TYPE_NAME (struct type const*) ;
 char* TYPE_TAG_NAME (struct type const*) ;

char *
type_name_no_tag (const struct type *type)
{
  if (TYPE_TAG_NAME (type) != ((void*)0))
    return TYPE_TAG_NAME (type);




  return TYPE_NAME (type);
}
