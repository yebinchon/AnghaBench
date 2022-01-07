
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 scalar_t__ DECL_DESTRUCTOR_P (int ) ;
 scalar_t__ NULL_TREE ;
 int current_function_decl ;
 int finish_compound_stmt (scalar_t__) ;
 int finish_constructor_body () ;
 int finish_destructor_body () ;
 scalar_t__ processing_template_decl ;

void
finish_function_body (tree compstmt)
{
  if (compstmt == NULL_TREE)
    return;


  finish_compound_stmt (compstmt);

  if (processing_template_decl)
                          ;
  else if (DECL_CONSTRUCTOR_P (current_function_decl))
    finish_constructor_body ();
  else if (DECL_DESTRUCTOR_P (current_function_decl))
    finish_destructor_body ();
}
