
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
typedef int c_parser ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {int type; int value; int keyword; int location; } ;


 scalar_t__ BLOCK_POINTER_TYPE ;



 int CPP_MULT ;
 int CPP_NAME ;



 scalar_t__ EXPR_P (scalar_t__) ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ NULL_TREE ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (int ) ;
 int add_stmt (int ) ;
 int c_break_label ;
 int c_cont_label ;
 int c_dialect_objc () ;
 scalar_t__ c_finish_bc_stmt (int *,int) ;
 scalar_t__ c_finish_expr_stmt (scalar_t__) ;
 scalar_t__ c_finish_goto_label (int ) ;
 scalar_t__ c_finish_goto_ptr (scalar_t__) ;
 scalar_t__ c_finish_return (scalar_t__) ;
 scalar_t__ c_parser_asm_statement (int *) ;
 int c_parser_compound_statement (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_do_statement (int *) ;
 int c_parser_error (int *,char*) ;
 TYPE_3__ c_parser_expression (int *) ;
 TYPE_2__ c_parser_expression_conv (int *) ;
 int c_parser_for_statement (int *) ;
 int c_parser_if_statement (int *) ;
 int c_parser_next_token_is (int *,int) ;
 int c_parser_objc_synchronized_statement (int *) ;
 int c_parser_objc_try_catch_statement (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_pragma (int *,int ) ;
 int c_parser_skip_until_found (int *,int const,char*) ;
 int c_parser_switch_statement (int *) ;
 int c_parser_while_statement (int *) ;
 int cur_block ;
 int error (char*) ;
 int gcc_assert (int ) ;
 int input_location ;
 scalar_t__ objc_build_throw_stmt (scalar_t__) ;
 int pragma_stmt ;

__attribute__((used)) static void
c_parser_statement_after_labels (c_parser *parser)
{
  location_t loc = c_parser_peek_token (parser)->location;
  tree stmt = NULL_TREE;
  switch (c_parser_peek_token (parser)->type)
    {
    case 143:
      add_stmt (c_parser_compound_statement (parser));
      break;
    case 144:
      switch (c_parser_peek_token (parser)->keyword)
 {
 case 131:
   c_parser_if_statement (parser);
   break;
 case 129:
   c_parser_switch_statement (parser);
   break;
 case 128:
   c_parser_while_statement (parser);
   break;
 case 134:
   c_parser_do_statement (parser);
   break;
 case 133:
   c_parser_for_statement (parser);
   break;
 case 132:

    if (cur_block)
      error ("goto not allowed in block literal");

   c_parser_consume_token (parser);
   if (c_parser_next_token_is (parser, CPP_NAME))
     {
       stmt = c_finish_goto_label (c_parser_peek_token (parser)->value);
       c_parser_consume_token (parser);
     }
   else if (c_parser_next_token_is (parser, CPP_MULT))
     {
       c_parser_consume_token (parser);
       stmt = c_finish_goto_ptr (c_parser_expression (parser).value);
     }
   else
     c_parser_error (parser, "expected identifier or %<*%>");
   goto expect_semicolon;
 case 135:
   c_parser_consume_token (parser);
   stmt = c_finish_bc_stmt (&c_cont_label, 0);
   goto expect_semicolon;
 case 136:
   c_parser_consume_token (parser);
   stmt = c_finish_bc_stmt (&c_break_label, 1);
   goto expect_semicolon;
 case 130:
   c_parser_consume_token (parser);
   if (c_parser_next_token_is (parser, 141))
     {
       stmt = c_finish_return (NULL_TREE);
       c_parser_consume_token (parser);
     }
   else
     {
       stmt = c_finish_return (c_parser_expression_conv (parser).value);
       goto expect_semicolon;
     }
   break;
 case 140:
   stmt = c_parser_asm_statement (parser);
   break;
 case 138:
   gcc_assert (c_dialect_objc ());
   c_parser_consume_token (parser);
   if (c_parser_next_token_is (parser, 141))
     {
       stmt = objc_build_throw_stmt (NULL_TREE);
       c_parser_consume_token (parser);
     }
   else
     {
       stmt
  = objc_build_throw_stmt (c_parser_expression (parser).value);
       goto expect_semicolon;
     }
   break;
 case 137:
   gcc_assert (c_dialect_objc ());
   c_parser_objc_try_catch_statement (parser);
   break;
 case 139:
   gcc_assert (c_dialect_objc ());
   c_parser_objc_synchronized_statement (parser);
   break;
 default:
   goto expr_stmt;
 }
      break;
    case 141:
      c_parser_consume_token (parser);
      break;
    case 146:
    case 145:




      c_parser_error (parser, "expected statement");
      c_parser_consume_token (parser);
      break;
    case 142:
      c_parser_pragma (parser, pragma_stmt);
      break;
    default:
    expr_stmt:
      stmt = c_finish_expr_stmt (c_parser_expression_conv (parser).value);
    expect_semicolon:
      c_parser_skip_until_found (parser, 141, "expected %<;%>");
      break;
    }
  if (stmt && EXPR_P (stmt))
    {
      if (TREE_CODE (stmt) == MODIFY_EXPR
   && TREE_CODE (TREE_TYPE (TREE_OPERAND (stmt, 0))) == BLOCK_POINTER_TYPE)
 SET_EXPR_LOCATION (stmt, input_location);
      else
 SET_EXPR_LOCATION (stmt, loc);
    }

}
