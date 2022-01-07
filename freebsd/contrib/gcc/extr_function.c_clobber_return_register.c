
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int DECL_RESULT (int ) ;
 int DECL_RTL (int ) ;
 scalar_t__ DECL_RTL_SET_P (int ) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int current_function_decl ;
 int diddle_return_value (int (*) (int ,int *),int *) ;
 int do_clobber_return_reg (int ,int *) ;

void
clobber_return_register (void)
{
  diddle_return_value (do_clobber_return_reg, ((void*)0));


  if (DECL_RTL_SET_P (DECL_RESULT (current_function_decl)))
    {
      tree decl_result = DECL_RESULT (current_function_decl);
      rtx decl_rtl = DECL_RTL (decl_result);
      if (REG_P (decl_rtl) && REGNO (decl_rtl) >= FIRST_PSEUDO_REGISTER)
 {
   do_clobber_return_reg (decl_rtl, ((void*)0));
 }
    }
}
