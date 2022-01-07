
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctor_kinds { ____Placeholder_ctor_kinds } ctor_kinds ;


 int complete_object_ctor ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ strchr (char*,char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static enum ctor_kinds
gnuv2_is_constructor_name (const char *name)
{
  if ((name[0] == '_' && name[1] == '_'
       && (isdigit (name[2]) || strchr ("Qt", name[2])))
      || strncmp (name, "__ct__", 6) == 0)
    return complete_object_ctor;
  else
    return 0;
}
