
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_STRUCT_FUNCTION (scalar_t__) ;
 int allocate_struct_function (scalar_t__) ;
 scalar_t__ caller_save_needed ;
 scalar_t__ cfun ;
 int cse_not_expected ;
 scalar_t__ frame_pointer_needed ;
 int generating_concat_p ;
 int init_emit () ;
 int init_expr () ;
 int init_varasm_status (scalar_t__) ;
 int optimize ;
 scalar_t__ reg_renumber ;
 scalar_t__ virtuals_instantiated ;

__attribute__((used)) static void
prepare_function_start (tree fndecl)
{
  if (fndecl && DECL_STRUCT_FUNCTION (fndecl))
    cfun = DECL_STRUCT_FUNCTION (fndecl);
  else
    allocate_struct_function (fndecl);
  init_emit ();
  init_varasm_status (cfun);
  init_expr ();

  cse_not_expected = ! optimize;


  caller_save_needed = 0;


  reg_renumber = 0;


  virtuals_instantiated = 0;


  generating_concat_p = 1;


  frame_pointer_needed = 0;
}
