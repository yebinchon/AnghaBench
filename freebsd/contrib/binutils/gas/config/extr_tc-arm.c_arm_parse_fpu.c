
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_option_cpu_value_table {int value; int * name; } ;


 int _ (char*) ;
 struct arm_option_cpu_value_table* arm_fpus ;
 int as_bad (int ,char*) ;
 int * mfpu_opt ;
 scalar_t__ streq (int *,char*) ;

__attribute__((used)) static int
arm_parse_fpu (char * str)
{
  const struct arm_option_cpu_value_table * opt;

  for (opt = arm_fpus; opt->name != ((void*)0); opt++)
    if (streq (opt->name, str))
      {
 mfpu_opt = &opt->value;
 return 1;
      }

  as_bad (_("unknown floating point format `%s'\n"), str);
  return 0;
}
