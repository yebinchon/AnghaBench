
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_8__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_QUERY ;
 int ERROR_MARK ;
 int RID_THROW ;
 int build_x_modify_expr (int ,int,int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 scalar_t__ cp_lexer_next_token_is_keyword (int ,int ) ;
 int cp_parser_assignment_operator_opt (TYPE_1__*) ;
 int cp_parser_binary_expression (TYPE_1__*,int) ;
 scalar_t__ cp_parser_non_integral_constant_expression (TYPE_1__*,char*) ;
 int cp_parser_question_colon_clause (TYPE_1__*,int ) ;
 int cp_parser_throw_expression (TYPE_1__*) ;
 int error_mark_node ;

__attribute__((used)) static tree
cp_parser_assignment_expression (cp_parser* parser, bool cast_p)
{
  tree expr;



  if (cp_lexer_next_token_is_keyword (parser->lexer, RID_THROW))
    expr = cp_parser_throw_expression (parser);


  else
    {

      expr = cp_parser_binary_expression (parser, cast_p);


      if (cp_lexer_next_token_is (parser->lexer, CPP_QUERY))
 return cp_parser_question_colon_clause (parser, expr);
      else
 {
   enum tree_code assignment_operator;



   assignment_operator
     = cp_parser_assignment_operator_opt (parser);
   if (assignment_operator != ERROR_MARK)
     {
       tree rhs;


       rhs = cp_parser_assignment_expression (parser, cast_p);


       if (cp_parser_non_integral_constant_expression (parser,
             "an assignment"))
  return error_mark_node;

       expr = build_x_modify_expr (expr,
       assignment_operator,
       rhs);
     }
 }
    }

  return expr;
}
