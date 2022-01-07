
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum cp_parser_prec { ____Placeholder_cp_parser_prec } cp_parser_prec ;
struct TYPE_13__ {size_t type; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_14__ {int prec; int tree_type; int lhs_type; int lhs; } ;
typedef TYPE_2__ cp_parser_expression_stack_entry ;
typedef TYPE_2__* cp_parser_expression_stack ;
struct TYPE_15__ {int lexer; } ;
typedef TYPE_4__ cp_parser ;
struct TYPE_12__ {int tree_type; } ;


 int ERROR_MARK ;
 int PREC_NOT_OPERATOR ;
 int TOKEN_PRECEDENCE (TYPE_1__*) ;
 TYPE_10__* binops_by_token ;
 int build_x_binary_op (int,int ,int,int ,int,int*) ;
 int cp_lexer_consume_token (int ) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 int cp_parser_cast_expression (TYPE_4__*,int,int) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_4__*,char*) ;
 int cp_parser_simple_cast_expression (TYPE_4__*) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_binary_expression (cp_parser* parser, bool cast_p)
{
  cp_parser_expression_stack stack;
  cp_parser_expression_stack_entry *sp = &stack[0];
  tree lhs, rhs;
  cp_token *token;
  enum tree_code tree_type, lhs_type, rhs_type;
  enum cp_parser_prec prec = PREC_NOT_OPERATOR, new_prec, lookahead_prec;
  bool overloaded_p;


  lhs = cp_parser_cast_expression (parser, 0, cast_p);
  lhs_type = ERROR_MARK;

  for (;;)
    {

      token = cp_lexer_peek_token (parser->lexer);

      new_prec = TOKEN_PRECEDENCE (token);
      if (new_prec <= prec)
 {
   if (sp == stack)
     break;
   else
     goto pop;
 }

     get_rhs:
      tree_type = binops_by_token[token->type].tree_type;


      cp_lexer_consume_token (parser->lexer);



      rhs = cp_parser_simple_cast_expression (parser);
      rhs_type = ERROR_MARK;




      token = cp_lexer_peek_token (parser->lexer);
      lookahead_prec = TOKEN_PRECEDENCE (token);
      if (lookahead_prec > new_prec)
 {




   sp->prec = prec;
   sp->tree_type = tree_type;
   sp->lhs = lhs;
   sp->lhs_type = lhs_type;
   sp++;
   lhs = rhs;
   lhs_type = rhs_type;
   prec = new_prec;
   new_prec = lookahead_prec;
   goto get_rhs;

  pop:







   --sp;
   prec = sp->prec;
   tree_type = sp->tree_type;
   rhs = lhs;
   rhs_type = lhs_type;
   lhs = sp->lhs;
   lhs_type = sp->lhs_type;
 }

      overloaded_p = 0;
      lhs = build_x_binary_op (tree_type, lhs, lhs_type, rhs, rhs_type,
          &overloaded_p);
      lhs_type = tree_type;







      if (overloaded_p
   && (cp_parser_non_integral_constant_expression
       (parser, "calls to overloaded operators")))
 return error_mark_node;
    }

  return lhs;
}
