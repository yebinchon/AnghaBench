
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int build_fold_indirect_ref (int ) ;
 scalar_t__ flag_mudflap ;
 int mf_mark (int ) ;

tree
build_va_arg_indirect_ref (tree addr)
{
  addr = build_fold_indirect_ref (addr);

  if (flag_mudflap)
    mf_mark (addr);

  return addr;
}
