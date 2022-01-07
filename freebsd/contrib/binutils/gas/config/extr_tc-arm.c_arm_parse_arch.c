
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_arch_option_table {int * name; int default_fpu; int value; } ;


 int _ (char*) ;
 struct arm_arch_option_table* arm_archs ;
 int arm_parse_extension (char*,int **) ;
 int as_bad (int ,char*) ;
 int * march_cpu_opt ;
 int * march_fpu_opt ;
 int selected_cpu_name ;
 char* strchr (char*,char) ;
 int strcpy (int ,int *) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static int
arm_parse_arch (char * str)
{
  const struct arm_arch_option_table *opt;
  char *ext = strchr (str, '+');
  int optlen;

  if (ext != ((void*)0))
    optlen = ext - str;
  else
    optlen = strlen (str);

  if (optlen == 0)
    {
      as_bad (_("missing architecture name `%s'"), str);
      return 0;
    }

  for (opt = arm_archs; opt->name != ((void*)0); opt++)
    if (strncmp (opt->name, str, optlen) == 0)
      {
 march_cpu_opt = &opt->value;
 march_fpu_opt = &opt->default_fpu;
 strcpy(selected_cpu_name, opt->name);

 if (ext != ((void*)0))
   return arm_parse_extension (ext, &march_cpu_opt);

 return 1;
      }

  as_bad (_("unknown architecture `%s'\n"), str);
  return 0;
}
