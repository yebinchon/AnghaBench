
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 scalar_t__ DECL_DESTRUCTOR_P (int ) ;
 int NULL_TREE ;
 int build_throw (int ) ;
 int current_function_decl ;
 int doing_eh (int) ;
 int finish_expr_stmt (int ) ;
 scalar_t__ in_function_try_handler ;

void
expand_end_catch_block (void)
{
  if (! doing_eh (1))
    return;



  if (in_function_try_handler
      && (DECL_CONSTRUCTOR_P (current_function_decl)
   || DECL_DESTRUCTOR_P (current_function_decl)))
    finish_expr_stmt (build_throw (NULL_TREE));
}
