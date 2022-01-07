
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_STREQN (char const*,char*,int) ;
 char* TYPE_FIELD_NAME (int ,int) ;
 int check_typedef (struct type*) ;

int
ada_is_parent_field (struct type *type, int field_num)
{
  const char *name = TYPE_FIELD_NAME (check_typedef (type), field_num);
  return (name != ((void*)0) &&
   (DEPRECATED_STREQN (name, "PARENT", 6) || DEPRECATED_STREQN (name, "_parent", 7)));
}
