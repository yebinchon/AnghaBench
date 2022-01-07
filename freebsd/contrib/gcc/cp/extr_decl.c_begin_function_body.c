
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BCS_FN_BODY ;
 scalar_t__ DECL_DESTRUCTOR_P (int ) ;
 int FUNCTION_NEEDS_BODY_BLOCK (int ) ;
 int NULL_TREE ;
 int begin_compound_stmt (int ) ;
 int begin_destructor_body () ;
 int current_function_decl ;
 int keep_next_level (int) ;
 scalar_t__ processing_template_decl ;

tree
begin_function_body (void)
{
  tree stmt;

  if (! FUNCTION_NEEDS_BODY_BLOCK (current_function_decl))
    return NULL_TREE;

  if (processing_template_decl)
                          ;
  else



    keep_next_level (1);

  stmt = begin_compound_stmt (BCS_FN_BODY);

  if (processing_template_decl)
                          ;
  else if (DECL_DESTRUCTOR_P (current_function_decl))
    begin_destructor_body ();

  return stmt;
}
