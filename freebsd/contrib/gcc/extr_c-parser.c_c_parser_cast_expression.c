
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c_type_name {TYPE_1__* specs; } ;
struct c_expr {void* original_code; int value; } ;
typedef int c_parser ;
struct TYPE_2__ {int type; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_BRACE ;
 int CPP_OPEN_PAREN ;
 void* ERROR_MARK ;
 int c_cast_expr (struct c_type_name*,int ) ;
 scalar_t__ c_dialect_objc () ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 int c_parser_peek_2nd_token (int *) ;
 struct c_expr c_parser_postfix_expression_after_paren_type (int *,struct c_type_name*) ;
 struct c_expr c_parser_postfix_expression_after_primary (int *,struct c_expr) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 struct c_type_name* c_parser_type_name (int *) ;
 struct c_expr c_parser_unary_expression (int *) ;
 scalar_t__ c_token_starts_typename (int ) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;
 int error_mark_node ;
 int gcc_assert (int) ;
 int used_types_insert (int ) ;

__attribute__((used)) static struct c_expr
c_parser_cast_expression (c_parser *parser, struct c_expr *after)
{
  gcc_assert (!after || c_dialect_objc ());
  if (after)
    return c_parser_postfix_expression_after_primary (parser, *after);




  if (c_parser_next_token_is (parser, CPP_OPEN_PAREN)
      && c_token_starts_typename (c_parser_peek_2nd_token (parser)))
    {
      struct c_type_name *type_name;
      struct c_expr ret;
      struct c_expr expr;
      c_parser_consume_token (parser);
      type_name = c_parser_type_name (parser);
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (type_name == ((void*)0))
 {
   ret.value = error_mark_node;
   ret.original_code = ERROR_MARK;
   return ret;
 }


      used_types_insert (type_name->specs->type);

      if (c_parser_next_token_is (parser, CPP_OPEN_BRACE))
 return c_parser_postfix_expression_after_paren_type (parser,
            type_name);
      expr = c_parser_cast_expression (parser, ((void*)0));
      expr = default_function_array_conversion (expr);
      ret.value = c_cast_expr (type_name, expr.value);
      ret.original_code = ERROR_MARK;
      return ret;
    }
  else
    return c_parser_unary_expression (parser);
}
