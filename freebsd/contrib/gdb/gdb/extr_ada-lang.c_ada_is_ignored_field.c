
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int DEPRECATED_STREQN (char const*,char*,int) ;
 char* TYPE_FIELD_NAME (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;

int
ada_is_ignored_field (struct type *type, int field_num)
{
  if (field_num < 0 || field_num > TYPE_NFIELDS (type))
    return 1;
  else
    {
      const char *name = TYPE_FIELD_NAME (type, field_num);
      return (name == ((void*)0)
       || (name[0] == '_' && !DEPRECATED_STREQN (name, "_parent", 7)));
    }
}
