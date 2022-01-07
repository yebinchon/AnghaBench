
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_abi_ops {int dummy; } ;


 struct cp_abi_ops current_cp_abi ;
 struct cp_abi_ops* find_cp_abi (char const*) ;

__attribute__((used)) static int
switch_to_cp_abi (const char *short_name)
{
  struct cp_abi_ops *abi;

  abi = find_cp_abi (short_name);
  if (abi == ((void*)0))
    return 0;

  current_cp_abi = *abi;
  return 1;
}
