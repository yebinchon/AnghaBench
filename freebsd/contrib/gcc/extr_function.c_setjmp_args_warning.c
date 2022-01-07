
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ARGUMENTS (int ) ;
 scalar_t__ DECL_RTL (scalar_t__) ;
 int REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int current_function_decl ;
 scalar_t__ regno_clobbered_at_setjmp (int ) ;
 int warning (int ,char*,scalar_t__) ;

void
setjmp_args_warning (void)
{
  tree decl;
  for (decl = DECL_ARGUMENTS (current_function_decl);
       decl; decl = TREE_CHAIN (decl))
    if (DECL_RTL (decl) != 0
 && REG_P (DECL_RTL (decl))
 && regno_clobbered_at_setjmp (REGNO (DECL_RTL (decl))))
      warning (0, "argument %q+D might be clobbered by %<longjmp%> or %<vfork%>",
        decl);
}
