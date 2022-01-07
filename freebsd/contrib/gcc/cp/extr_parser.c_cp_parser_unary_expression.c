
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_19__ {scalar_t__ type; int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_20__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_18__ {int keyword; } ;



 int ALIGNOF_EXPR ;

 scalar_t__ CPP_AND_AND ;
 scalar_t__ CPP_KEYWORD ;
 scalar_t__ CPP_MINUS_MINUS ;
 scalar_t__ CPP_PLUS_PLUS ;
 int CPP_SCOPE ;
 int ERROR_MARK ;
 int IMAGPART_EXPR ;




 int REALPART_EXPR ;







 int SIZEOF_EXPR ;

 int TYPE_P (int ) ;

 int build_x_indirect_ref (int ,char*) ;
 int build_x_unary_op (int,int ) ;
 TYPE_1__* cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 TYPE_16__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_allow_gnu_extensions_p (TYPE_2__*) ;
 int cp_parser_cast_expression (TYPE_2__*,int,int) ;
 int cp_parser_delete_expression (TYPE_2__*) ;
 int cp_parser_extension_opt (TYPE_2__*,int*) ;
 int cp_parser_identifier (TYPE_2__*) ;
 int cp_parser_new_expression (TYPE_2__*) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_2__*,char const*) ;
 int cp_parser_postfix_expression (TYPE_2__*,int,int) ;
 int cp_parser_simple_cast_expression (TYPE_2__*) ;
 int cp_parser_sizeof_operand (TYPE_2__*,int) ;
 int cp_parser_unary_operator (TYPE_1__*) ;
 int cxx_sizeof_or_alignof_expr (int ,int) ;
 int cxx_sizeof_or_alignof_type (int ,int,int) ;
 int error_mark_node ;
 int finish_label_address_expr (int ) ;
 int finish_unary_op_expr (int,int ) ;
 int gcc_unreachable () ;
 int pedantic ;

__attribute__((used)) static tree
cp_parser_unary_expression (cp_parser *parser, bool address_p, bool cast_p)
{
  cp_token *token;
  enum tree_code unary_operator;


  token = cp_lexer_peek_token (parser->lexer);

  if (token->type == CPP_KEYWORD)
    {
      enum rid keyword = token->keyword;

      switch (keyword)
 {
 case 136:
 case 130:
   {
     tree operand;
     enum tree_code op;

     op = keyword == 136 ? ALIGNOF_EXPR : SIZEOF_EXPR;

     cp_lexer_consume_token (parser->lexer);

     operand = cp_parser_sizeof_operand (parser, keyword);

     if (TYPE_P (operand))
       return cxx_sizeof_or_alignof_type (operand, op, 1);
     else
       return cxx_sizeof_or_alignof_expr (operand, op);
   }

 case 132:
   return cp_parser_new_expression (parser);

 case 135:
   return cp_parser_delete_expression (parser);

 case 134:
   {

     int saved_pedantic;
     tree expr;


     cp_parser_extension_opt (parser, &saved_pedantic);

     expr = cp_parser_simple_cast_expression (parser);

     pedantic = saved_pedantic;

     return expr;
   }

 case 131:
 case 133:
   {
     tree expression;


     cp_lexer_consume_token (parser->lexer);

     expression = cp_parser_simple_cast_expression (parser);

     return build_x_unary_op ((keyword == 131
          ? REALPART_EXPR : IMAGPART_EXPR),
         expression);
   }
   break;

 default:
   break;
 }
    }





  if (cp_lexer_next_token_is (parser->lexer, CPP_SCOPE))
    {
      enum rid keyword;



      keyword = cp_lexer_peek_nth_token (parser->lexer, 2)->keyword;

      if (keyword == 132)
 return cp_parser_new_expression (parser);

      else if (keyword == 135)
 return cp_parser_delete_expression (parser);
    }


  unary_operator = cp_parser_unary_operator (token);


  if (unary_operator == ERROR_MARK)
    {
      if (token->type == CPP_PLUS_PLUS)
 unary_operator = 137;
      else if (token->type == CPP_MINUS_MINUS)
 unary_operator = 138;

      else if (cp_parser_allow_gnu_extensions_p (parser)
        && token->type == CPP_AND_AND)
 {
   tree identifier;


   cp_lexer_consume_token (parser->lexer);

   identifier = cp_parser_identifier (parser);

   return finish_label_address_expr (identifier);
 }
    }
  if (unary_operator != ERROR_MARK)
    {
      tree cast_expression;
      tree expression = error_mark_node;
      const char *non_constant_p = ((void*)0);


      token = cp_lexer_consume_token (parser->lexer);

      cast_expression
 = cp_parser_cast_expression (parser,
         unary_operator == 142,
                    0);

      switch (unary_operator)
 {
 case 140:
   non_constant_p = "`*'";
   expression = build_x_indirect_ref (cast_expression, "unary *");
   break;

 case 142:
   non_constant_p = "`&'";

 case 141:
   expression = build_x_unary_op (unary_operator, cast_expression);
   break;

 case 137:
 case 138:
   non_constant_p = (unary_operator == 137
       ? "`++'" : "`--'");

 case 128:
 case 139:
 case 129:
   expression = finish_unary_op_expr (unary_operator, cast_expression);
   break;

 default:
   gcc_unreachable ();
 }

      if (non_constant_p
   && cp_parser_non_integral_constant_expression (parser,
        non_constant_p))
 expression = error_mark_node;

      return expression;
    }

  return cp_parser_postfix_expression (parser, address_p, cast_p);
}
