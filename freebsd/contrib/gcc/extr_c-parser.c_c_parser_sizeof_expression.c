
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct c_type_name {TYPE_3__* declarator; } ;
struct c_expr {int value; int original_code; } ;
typedef int c_parser ;
struct TYPE_4__ {scalar_t__ vla_unspec_p; } ;
struct TYPE_5__ {TYPE_1__ array; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_2__ u; } ;


 scalar_t__ COMPONENT_REF ;
 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_BRACE ;
 int CPP_OPEN_PAREN ;
 scalar_t__ DECL_C_BIT_FIELD (int ) ;
 int ERROR_MARK ;
 int RID_SIZEOF ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 struct c_expr c_expr_sizeof_expr (struct c_expr) ;
 struct c_expr c_expr_sizeof_type (struct c_type_name*) ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_peek_2nd_token (int *) ;
 struct c_expr c_parser_postfix_expression_after_paren_type (int *,struct c_type_name*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 struct c_type_name* c_parser_type_name (int *) ;
 struct c_expr c_parser_unary_expression (int *) ;
 scalar_t__ c_token_starts_typename (int ) ;
 scalar_t__ cdk_array ;
 int error (char*) ;
 int error_mark_node ;
 int gcc_assert (int ) ;
 int in_sizeof ;
 int skip_evaluation ;

__attribute__((used)) static struct c_expr
c_parser_sizeof_expression (c_parser *parser)
{
  struct c_expr expr;
  gcc_assert (c_parser_next_token_is_keyword (parser, RID_SIZEOF));
  c_parser_consume_token (parser);
  skip_evaluation++;
  in_sizeof++;
  if (c_parser_next_token_is (parser, CPP_OPEN_PAREN)
      && c_token_starts_typename (c_parser_peek_2nd_token (parser)))
    {


      struct c_type_name *type_name;
      c_parser_consume_token (parser);
      type_name = c_parser_type_name (parser);
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (type_name == ((void*)0))
 {
   struct c_expr ret;
   skip_evaluation--;
   in_sizeof--;
   ret.value = error_mark_node;
   ret.original_code = ERROR_MARK;
   return ret;
 }
      if (c_parser_next_token_is (parser, CPP_OPEN_BRACE))
 {
   expr = c_parser_postfix_expression_after_paren_type (parser,
              type_name);
   goto sizeof_expr;
 }

      skip_evaluation--;
      in_sizeof--;
      if (type_name->declarator->kind == cdk_array
   && type_name->declarator->u.array.vla_unspec_p)
 {

   error ("%<[*]%> not allowed in other than a declaration");
 }
      return c_expr_sizeof_type (type_name);
    }
  else
    {
      expr = c_parser_unary_expression (parser);
    sizeof_expr:
      skip_evaluation--;
      in_sizeof--;
      if (TREE_CODE (expr.value) == COMPONENT_REF
   && DECL_C_BIT_FIELD (TREE_OPERAND (expr.value, 1)))
 error ("%<sizeof%> applied to a bit-field");
      return c_expr_sizeof_expr (expr);
    }
}
