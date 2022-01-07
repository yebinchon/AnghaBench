
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BLOCK_SUBBLOCKS (scalar_t__) ;
 scalar_t__ BLOCK_VARS (scalar_t__) ;
 int DECL_RTL (scalar_t__) ;
 scalar_t__ DECL_RTL_SET_P (scalar_t__) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ regno_clobbered_at_setjmp (int ) ;
 int warning (int ,char*,scalar_t__) ;

void
setjmp_vars_warning (tree block)
{
  tree decl, sub;

  for (decl = BLOCK_VARS (block); decl; decl = TREE_CHAIN (decl))
    {
      if (TREE_CODE (decl) == VAR_DECL
   && DECL_RTL_SET_P (decl)
   && REG_P (DECL_RTL (decl))
   && regno_clobbered_at_setjmp (REGNO (DECL_RTL (decl))))
 warning (0, "variable %q+D might be clobbered by %<longjmp%>"
   " or %<vfork%>",
   decl);
    }

  for (sub = BLOCK_SUBBLOCKS (block); sub; sub = TREE_CHAIN (sub))
    setjmp_vars_warning (sub);
}
