
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_arg {int name; } ;


 int ARRAY_SIZE (int *) ;
 int * reserved_field_names ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int conflict_field_name(const char *name,
          struct probe_arg *args, int narg)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(reserved_field_names); i++)
  if (strcmp(reserved_field_names[i], name) == 0)
   return 1;
 for (i = 0; i < narg; i++)
  if (strcmp(args[i].name, name) == 0)
   return 1;
 return 0;
}
