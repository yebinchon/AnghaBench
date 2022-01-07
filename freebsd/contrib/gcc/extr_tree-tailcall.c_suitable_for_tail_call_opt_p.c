
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ARGUMENTS (int ) ;
 scalar_t__ TREE_ADDRESSABLE (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ USING_SJLJ_EXCEPTIONS ;
 scalar_t__ current_function_calls_alloca ;
 scalar_t__ current_function_calls_setjmp ;
 int current_function_decl ;
 scalar_t__ current_function_has_exception_handlers () ;

__attribute__((used)) static bool
suitable_for_tail_call_opt_p (void)
{
  tree param;



  if (current_function_calls_alloca)
    return 0;




  if (USING_SJLJ_EXCEPTIONS && current_function_has_exception_handlers ())
    return 0;




  if (current_function_calls_setjmp)
    return 0;



  for (param = DECL_ARGUMENTS (current_function_decl);
       param;
       param = TREE_CHAIN (param))
    if (TREE_ADDRESSABLE (param))
      return 0;

  return 1;
}
