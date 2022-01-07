
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_abi_ops {int shortname; } ;


 struct cp_abi_ops** cp_abis ;
 int num_cp_abis ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct cp_abi_ops *
find_cp_abi (const char *short_name)
{
  int i;

  for (i = 0; i < num_cp_abis; i++)
    if (strcmp (cp_abis[i]->shortname, short_name) == 0)
      return cp_abis[i];

  return ((void*)0);
}
