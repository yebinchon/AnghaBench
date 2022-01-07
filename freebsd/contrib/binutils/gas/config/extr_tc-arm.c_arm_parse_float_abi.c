
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_option_value_table {int value; int * name; } ;


 int _ (char*) ;
 struct arm_option_value_table* arm_float_abis ;
 int as_bad (int ,char*) ;
 int mfloat_abi_opt ;
 scalar_t__ streq (int *,char*) ;

__attribute__((used)) static int
arm_parse_float_abi (char * str)
{
  const struct arm_option_value_table * opt;

  for (opt = arm_float_abis; opt->name != ((void*)0); opt++)
    if (streq (opt->name, str))
      {
 mfloat_abi_opt = opt->value;
 return 1;
      }

  as_bad (_("unknown floating point abi `%s'\n"), str);
  return 0;
}
