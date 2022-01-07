
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_cpu_option_table {int * name; scalar_t__ canonical_name; int default_fpu; int value; } ;


 scalar_t__ TOUPPER (int ) ;
 int _ (char*) ;
 struct arm_cpu_option_table* arm_cpus ;
 int arm_parse_extension (char*,int **) ;
 int as_bad (int ,char*) ;
 int * mcpu_cpu_opt ;
 int * mcpu_fpu_opt ;
 scalar_t__* selected_cpu_name ;
 char* strchr (char*,char) ;
 int strcpy (scalar_t__*,scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static int
arm_parse_cpu (char * str)
{
  const struct arm_cpu_option_table * opt;
  char * ext = strchr (str, '+');
  int optlen;

  if (ext != ((void*)0))
    optlen = ext - str;
  else
    optlen = strlen (str);

  if (optlen == 0)
    {
      as_bad (_("missing cpu name `%s'"), str);
      return 0;
    }

  for (opt = arm_cpus; opt->name != ((void*)0); opt++)
    if (strncmp (opt->name, str, optlen) == 0)
      {
 mcpu_cpu_opt = &opt->value;
 mcpu_fpu_opt = &opt->default_fpu;
 if (opt->canonical_name)
   strcpy(selected_cpu_name, opt->canonical_name);
 else
   {
     int i;
     for (i = 0; i < optlen; i++)
       selected_cpu_name[i] = TOUPPER (opt->name[i]);
     selected_cpu_name[i] = 0;
   }

 if (ext != ((void*)0))
   return arm_parse_extension (ext, &mcpu_cpu_opt);

 return 1;
      }

  as_bad (_("unknown cpu `%s'"), str);
  return 0;
}
