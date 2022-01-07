
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_function_decl ;
 int get_insns () ;
 int unshare_all_rtl_1 (int ,int ) ;

unsigned int
unshare_all_rtl (void)
{
  unshare_all_rtl_1 (current_function_decl, get_insns ());
  return 0;
}
