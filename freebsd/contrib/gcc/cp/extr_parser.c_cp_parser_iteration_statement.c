
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int tree ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_14__ {int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_15__ {unsigned char in_statement; int lexer; } ;
typedef TYPE_2__ cp_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_KEYWORD ;
 int CPP_OPEN_PAREN ;
 int CPP_SEMICOLON ;
 void* IN_ITERATION_STMT ;
 int NULL_TREE ;



 int begin_do_stmt (int ) ;
 int begin_for_stmt (int ) ;
 int begin_while_stmt (int ) ;
 int cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_already_scoped_statement (TYPE_2__*) ;
 int cp_parser_attributes_opt (TYPE_2__*) ;
 int cp_parser_condition (TYPE_2__*) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_expression (TYPE_2__*,int) ;
 int cp_parser_for_init_statement (TYPE_2__*) ;
 int cp_parser_implicitly_scoped_statement (TYPE_2__*,int *) ;
 TYPE_1__* cp_parser_require (TYPE_2__*,int ,char*) ;
 int cp_parser_require_keyword (TYPE_2__*,int const,char*) ;
 int error_mark_node ;
 int finish_do_body (int ) ;
 int finish_do_stmt (int ,int ) ;
 int finish_for_cond (int ,int ) ;
 int finish_for_expr (int ,int ) ;
 int finish_for_init_stmt (int ) ;
 int finish_for_stmt (int ) ;
 int finish_while_stmt (int ) ;
 int finish_while_stmt_cond (int ,int ) ;

__attribute__((used)) static tree
cp_parser_iteration_statement (cp_parser* parser)
{
  cp_token *token;
  enum rid keyword;

  tree statement, attributes;

  unsigned char in_statement;




  token = cp_parser_require (parser, CPP_KEYWORD, "iteration-statement");
  if (!token)
    return error_mark_node;



  in_statement = parser->in_statement;



  attributes = cp_parser_attributes_opt (parser);



  keyword = token->keyword;
  switch (keyword)
    {
    case 128:
      {
 tree condition;



 statement = begin_while_stmt (attributes);


 cp_parser_require (parser, CPP_OPEN_PAREN, "`('");

 condition = cp_parser_condition (parser);
 finish_while_stmt_cond (condition, statement);

 cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");

 parser->in_statement = IN_ITERATION_STMT;
 cp_parser_already_scoped_statement (parser);
 parser->in_statement = in_statement;

 finish_while_stmt (statement);
      }
      break;

    case 130:
      {
 tree expression;



 statement = begin_do_stmt (attributes);


 parser->in_statement = IN_ITERATION_STMT;
 cp_parser_implicitly_scoped_statement (parser, ((void*)0));
 parser->in_statement = in_statement;
 finish_do_body (statement);

 cp_parser_require_keyword (parser, 128, "`while'");

 cp_parser_require (parser, CPP_OPEN_PAREN, "`('");

 expression = cp_parser_expression (parser, 0);

 finish_do_stmt (expression, statement);

 cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");

 cp_parser_require (parser, CPP_SEMICOLON, "`;'");
      }
      break;

    case 129:
      {
 tree condition = NULL_TREE;
 tree expression = NULL_TREE;



 statement = begin_for_stmt (attributes);


 cp_parser_require (parser, CPP_OPEN_PAREN, "`('");

 cp_parser_for_init_statement (parser);
 finish_for_init_stmt (statement);


 if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
   condition = cp_parser_condition (parser);
 finish_for_cond (condition, statement);

 cp_parser_require (parser, CPP_SEMICOLON, "`;'");


 if (cp_lexer_next_token_is_not (parser->lexer, CPP_CLOSE_PAREN))
   expression = cp_parser_expression (parser, 0);
 finish_for_expr (expression, statement);

 cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'");


 parser->in_statement = IN_ITERATION_STMT;
 cp_parser_already_scoped_statement (parser);
 parser->in_statement = in_statement;


 finish_for_stmt (statement);
      }
      break;

    default:
      cp_parser_error (parser, "expected iteration-statement");
      statement = error_mark_node;
      break;
    }

  return statement;
}
