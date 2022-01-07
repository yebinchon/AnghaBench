
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ENUM ;
 int * strchr (char*,char const) ;
 char* strstr (char const*,char*) ;
 char* type_name_no_tag (struct type*) ;

const char *
ada_renaming_type (struct type *type)
{
  if (type != ((void*)0) && TYPE_CODE (type) == TYPE_CODE_ENUM)
    {
      const char *name = type_name_no_tag (type);
      const char *suffix = (name == ((void*)0)) ? ((void*)0) : strstr (name, "___XR");
      if (suffix == ((void*)0)
   || (suffix[5] != '\000' && strchr ("PES_", suffix[5]) == ((void*)0)))
 return ((void*)0);
      else
 return suffix + 3;
    }
  else
    return ((void*)0);
}
