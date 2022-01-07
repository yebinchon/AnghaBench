
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_STREQ (char const*,char*) ;
 scalar_t__ DEPRECATED_STREQN (char const*,char*,int) ;
 char* TYPE_FIELD_NAME (struct type*,int) ;

int
ada_is_wrapper_field (struct type *type, int field_num)
{
  const char *name = TYPE_FIELD_NAME (type, field_num);
  return (name != ((void*)0)
   && (DEPRECATED_STREQN (name, "PARENT", 6) || DEPRECATED_STREQ (name, "REP")
       || DEPRECATED_STREQN (name, "_parent", 7)
       || name[0] == 'S' || name[0] == 'R' || name[0] == 'O'));
}
