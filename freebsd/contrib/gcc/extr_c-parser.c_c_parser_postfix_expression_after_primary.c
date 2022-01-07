
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct c_expr {void* original_code; void* value; } ;
typedef int c_parser ;
struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int type; int value; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_CLOSE_SQUARE ;



 int CPP_NAME ;



 void* ERROR_MARK ;
 int NULL_TREE ;
 int POSTDECREMENT_EXPR ;
 int POSTINCREMENT_EXPR ;
 void* build_array_ref (void*,int ) ;
 void* build_component_ref (void*,int ) ;
 void* build_function_call (void*,int ) ;
 void* build_indirect_ref (void*,char*) ;
 void* build_unary_op (int ,void*,int ) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 int c_parser_expr_list (int *,int) ;
 TYPE_2__ c_parser_expression (int *) ;
 int c_parser_next_token_is (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;
 void* error_mark_node ;

__attribute__((used)) static struct c_expr
c_parser_postfix_expression_after_primary (c_parser *parser,
        struct c_expr expr)
{
  tree ident, idx, exprlist;
  while (1)
    {
      switch (c_parser_peek_token (parser)->type)
 {
 case 129:

   c_parser_consume_token (parser);
   idx = c_parser_expression (parser).value;
   c_parser_skip_until_found (parser, CPP_CLOSE_SQUARE,
         "expected %<]%>");
   expr.value = build_array_ref (expr.value, idx);
   expr.original_code = ERROR_MARK;
   break;
 case 130:

   c_parser_consume_token (parser);
   if (c_parser_next_token_is (parser, CPP_CLOSE_PAREN))
     exprlist = NULL_TREE;
   else
     exprlist = c_parser_expr_list (parser, 1);
   c_parser_skip_until_found (parser, CPP_CLOSE_PAREN,
         "expected %<)%>");
   expr.value = build_function_call (expr.value, exprlist);
   expr.original_code = ERROR_MARK;
   break;
 case 132:

   c_parser_consume_token (parser);
   expr = default_function_array_conversion (expr);
   if (c_parser_next_token_is (parser, CPP_NAME))
     ident = c_parser_peek_token (parser)->value;
   else
     {
       c_parser_error (parser, "expected identifier");
       expr.value = error_mark_node;
       expr.original_code = ERROR_MARK;
       return expr;
     }
   c_parser_consume_token (parser);
   expr.value = build_component_ref (expr.value, ident);
   expr.original_code = ERROR_MARK;
   break;
 case 133:

   c_parser_consume_token (parser);
   expr = default_function_array_conversion (expr);
   if (c_parser_next_token_is (parser, CPP_NAME))
     ident = c_parser_peek_token (parser)->value;
   else
     {
       c_parser_error (parser, "expected identifier");
       expr.value = error_mark_node;
       expr.original_code = ERROR_MARK;
       return expr;
     }
   c_parser_consume_token (parser);
   expr.value = build_component_ref (build_indirect_ref (expr.value,
        "->"), ident);
   expr.original_code = ERROR_MARK;
   break;
 case 128:

   c_parser_consume_token (parser);
   expr = default_function_array_conversion (expr);
   expr.value = build_unary_op (POSTINCREMENT_EXPR, expr.value, 0);
   expr.original_code = ERROR_MARK;
   break;
 case 131:

   c_parser_consume_token (parser);
   expr = default_function_array_conversion (expr);
   expr.value = build_unary_op (POSTDECREMENT_EXPR, expr.value, 0);
   expr.original_code = ERROR_MARK;
   break;
 default:
   return expr;
 }
    }
}
