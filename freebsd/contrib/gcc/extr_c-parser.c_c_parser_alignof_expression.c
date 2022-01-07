
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_type_name {int dummy; } ;
struct c_expr {void* original_code; int value; } ;
typedef int c_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_BRACE ;
 int CPP_OPEN_PAREN ;
 void* ERROR_MARK ;
 int RID_ALIGNOF ;
 int c_alignof (int ) ;
 int c_alignof_expr (int ) ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_peek_2nd_token (int *) ;
 struct c_expr c_parser_postfix_expression_after_paren_type (int *,struct c_type_name*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 struct c_type_name* c_parser_type_name (int *) ;
 struct c_expr c_parser_unary_expression (int *) ;
 scalar_t__ c_token_starts_typename (int ) ;
 int error_mark_node ;
 int gcc_assert (int ) ;
 int groktypename (struct c_type_name*) ;
 int in_alignof ;
 int skip_evaluation ;

__attribute__((used)) static struct c_expr
c_parser_alignof_expression (c_parser *parser)
{
  struct c_expr expr;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_ALIGNOF));
  c_parser_consume_token (parser);
  skip_evaluation++;
  in_alignof++;
  if (c_parser_next_token_is (parser, CPP_OPEN_PAREN)
      && c_token_starts_typename (c_parser_peek_2nd_token (parser)))
    {


      struct c_type_name *type_name;
      struct c_expr ret;
      c_parser_consume_token (parser);
      type_name = c_parser_type_name (parser);
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (type_name == ((void*)0))
 {
   struct c_expr ret;
   skip_evaluation--;
   in_alignof--;
   ret.value = error_mark_node;
   ret.original_code = ERROR_MARK;
   return ret;
 }
      if (c_parser_next_token_is (parser, CPP_OPEN_BRACE))
 {
   expr = c_parser_postfix_expression_after_paren_type (parser,
              type_name);
   goto alignof_expr;
 }

      skip_evaluation--;
      in_alignof--;
      ret.value = c_alignof (groktypename (type_name));
      ret.original_code = ERROR_MARK;
      return ret;
    }
  else
    {
      struct c_expr ret;
      expr = c_parser_unary_expression (parser);
    alignof_expr:
      skip_evaluation--;
      in_alignof--;
      ret.value = c_alignof_expr (expr.value);
      ret.original_code = ERROR_MARK;
      return ret;
    }
}
