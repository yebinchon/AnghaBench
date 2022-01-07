
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c_expr {void* original_code; int value; } ;
typedef int c_parser ;
struct TYPE_2__ {int type; int keyword; int value; } ;


 int ADDR_EXPR ;
 int BIT_NOT_EXPR ;
 int CONVERT_EXPR ;







 int CPP_NAME ;



 void* ERROR_MARK ;
 int IMAGPART_EXPR ;
 int NEGATE_EXPR ;
 int OPT_Wtraditional ;
 int PREDECREMENT_EXPR ;
 int PREINCREMENT_EXPR ;
 int REALPART_EXPR ;





 int TRUTH_NOT_EXPR ;
 int build_indirect_ref (int ,char*) ;
 int c_dialect_objc () ;
 struct c_expr c_parser_alignof_expression (int *) ;
 struct c_expr c_parser_cast_expression (int *,int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 int c_parser_next_token_is (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 struct c_expr c_parser_postfix_expression (int *) ;
 struct c_expr c_parser_sizeof_expression (int *) ;
 struct c_expr default_function_array_conversion (struct c_expr) ;
 int disable_extension_diagnostics () ;
 int error_mark_node ;
 int finish_label_address_expr (int ) ;
 int in_system_header ;
 struct c_expr parser_build_unary_op (int ,struct c_expr) ;
 int restore_extension_diagnostics (int) ;
 int warning (int ,char*) ;

__attribute__((used)) static struct c_expr
c_parser_unary_expression (c_parser *parser)
{
  int ext;
  struct c_expr ret, op;
  switch (c_parser_peek_token (parser)->type)
    {
    case 133:
      c_parser_consume_token (parser);
      op = c_parser_cast_expression (parser, ((void*)0));
      op = default_function_array_conversion (op);
      return parser_build_unary_op (PREINCREMENT_EXPR, op);
    case 137:
      c_parser_consume_token (parser);
      op = c_parser_cast_expression (parser, ((void*)0));
      op = default_function_array_conversion (op);
      return parser_build_unary_op (PREDECREMENT_EXPR, op);
    case 142:
      c_parser_consume_token (parser);
      return parser_build_unary_op (ADDR_EXPR,
        c_parser_cast_expression (parser, ((void*)0)));
    case 136:
      c_parser_consume_token (parser);
      op = c_parser_cast_expression (parser, ((void*)0));
      op = default_function_array_conversion (op);
      ret.value = build_indirect_ref (op.value, "unary *");
      ret.original_code = ERROR_MARK;
      return ret;
    case 134:
      c_parser_consume_token (parser);
      if (!c_dialect_objc () && !in_system_header)
 warning (OPT_Wtraditional,
   "traditional C rejects the unary plus operator");
      op = c_parser_cast_expression (parser, ((void*)0));
      op = default_function_array_conversion (op);
      return parser_build_unary_op (CONVERT_EXPR, op);
    case 138:
      c_parser_consume_token (parser);
      op = c_parser_cast_expression (parser, ((void*)0));
      op = default_function_array_conversion (op);
      return parser_build_unary_op (NEGATE_EXPR, op);
    case 140:
      c_parser_consume_token (parser);
      op = c_parser_cast_expression (parser, ((void*)0));
      op = default_function_array_conversion (op);
      return parser_build_unary_op (BIT_NOT_EXPR, op);
    case 135:
      c_parser_consume_token (parser);
      op = c_parser_cast_expression (parser, ((void*)0));
      op = default_function_array_conversion (op);
      return parser_build_unary_op (TRUTH_NOT_EXPR, op);
    case 141:

      c_parser_consume_token (parser);
      if (c_parser_next_token_is (parser, CPP_NAME))
 {
   ret.value = finish_label_address_expr
     (c_parser_peek_token (parser)->value);
   c_parser_consume_token (parser);
 }
      else
 {
   c_parser_error (parser, "expected identifier");
   ret.value = error_mark_node;
 }
 ret.original_code = ERROR_MARK;
 return ret;
    case 139:
      switch (c_parser_peek_token (parser)->keyword)
 {
 case 128:
   return c_parser_sizeof_expression (parser);
 case 132:
   return c_parser_alignof_expression (parser);
 case 131:
   c_parser_consume_token (parser);
   ext = disable_extension_diagnostics ();
   ret = c_parser_cast_expression (parser, ((void*)0));
   restore_extension_diagnostics (ext);
   return ret;
 case 129:
   c_parser_consume_token (parser);
   op = c_parser_cast_expression (parser, ((void*)0));
   op = default_function_array_conversion (op);
   return parser_build_unary_op (REALPART_EXPR, op);
 case 130:
   c_parser_consume_token (parser);
   op = c_parser_cast_expression (parser, ((void*)0));
   op = default_function_array_conversion (op);
   return parser_build_unary_op (IMAGPART_EXPR, op);
 default:
   return c_parser_postfix_expression (parser);
 }
    default:
      return c_parser_postfix_expression (parser);
    }
}
