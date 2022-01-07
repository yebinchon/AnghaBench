
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_option_cpu_value_table {int * name; int value; } ;
typedef int arm_feature_set ;


 int ARM_MERGE_FEATURE_SETS (int ,int ,int ) ;
 int _ (char*) ;
 struct arm_option_cpu_value_table* arm_extensions ;
 int as_bad (int ,...) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int *,char*,int) ;
 int * xmalloc (int) ;

__attribute__((used)) static int
arm_parse_extension (char * str, const arm_feature_set **opt_p)
{
  arm_feature_set *ext_set = xmalloc (sizeof (arm_feature_set));


  *ext_set = **opt_p;
  *opt_p = ext_set;

  while (str != ((void*)0) && *str != 0)
    {
      const struct arm_option_cpu_value_table * opt;
      char * ext;
      int optlen;

      if (*str != '+')
 {
   as_bad (_("invalid architectural extension"));
   return 0;
 }

      str++;
      ext = strchr (str, '+');

      if (ext != ((void*)0))
 optlen = ext - str;
      else
 optlen = strlen (str);

      if (optlen == 0)
 {
   as_bad (_("missing architectural extension"));
   return 0;
 }

      for (opt = arm_extensions; opt->name != ((void*)0); opt++)
 if (strncmp (opt->name, str, optlen) == 0)
   {
     ARM_MERGE_FEATURE_SETS (*ext_set, *ext_set, opt->value);
     break;
   }

      if (opt->name == ((void*)0))
 {
   as_bad (_("unknown architectural extnsion `%s'"), str);
   return 0;
 }

      str = ext;
    };

  return 1;
}
