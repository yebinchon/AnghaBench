
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_expr {scalar_t__ value; } ;
typedef int c_parser ;


 scalar_t__ COMPOUND_LITERAL_EXPR ;
 int CPP_OPEN_BRACE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ c_dialect_objc () ;
 struct c_expr c_parser_braced_init (int *,scalar_t__,int) ;
 struct c_expr c_parser_expr_no_commas (int *,struct c_expr*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;
 int gcc_assert (int) ;
 int process_init_element (struct c_expr) ;

__attribute__((used)) static void
c_parser_initval (c_parser *parser, struct c_expr *after)
{
  struct c_expr init;
  gcc_assert (!after || c_dialect_objc ());
  if (c_parser_next_token_is (parser, CPP_OPEN_BRACE) && !after)
    init = c_parser_braced_init (parser, NULL_TREE, 1);
  else
    {
      init = c_parser_expr_no_commas (parser, after);
      if (init.value != NULL_TREE
   && TREE_CODE (init.value) != STRING_CST
   && TREE_CODE (init.value) != COMPOUND_LITERAL_EXPR)
 init = default_function_array_conversion (init);
    }
  process_init_element (init);
}
