
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 int DECL_INITIAL (scalar_t__) ;
 int DECL_RTL (scalar_t__) ;
 int SET_DECL_RTL (scalar_t__,int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int copy_rtx_if_shared (int ) ;
 int stack_slot_list ;
 int unshare_all_decls (int ) ;
 int unshare_all_rtl_in_chain (int ) ;

__attribute__((used)) static void
unshare_all_rtl_1 (tree fndecl, rtx insn)
{
  tree decl;


  for (decl = DECL_ARGUMENTS (fndecl); decl; decl = TREE_CHAIN (decl))
    SET_DECL_RTL (decl, copy_rtx_if_shared (DECL_RTL (decl)));


  unshare_all_decls (DECL_INITIAL (fndecl));


  unshare_all_rtl_in_chain (insn);
  stack_slot_list = copy_rtx_if_shared (stack_slot_list);
}
