
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tree ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_11__ {int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_12__ {int in_switch_statement_p; unsigned char in_statement; int lexer; } ;
typedef TYPE_2__ cp_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_KEYWORD ;
 int CPP_OPEN_PAREN ;
 int EXPR_LOCUS (int ) ;
 unsigned char IN_SWITCH_STMT ;
 int OPT_Wparentheses ;
 int RID_ELSE ;


 int begin_else_clause (int ) ;
 int begin_if_stmt () ;
 int begin_switch_stmt () ;
 int cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is_keyword (int ,int ) ;
 int cp_parser_condition (TYPE_2__*) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_implicitly_scoped_statement (TYPE_2__*,int*) ;
 TYPE_1__* cp_parser_require (TYPE_2__*,int ,char*) ;
 int cp_parser_skip_to_closing_parenthesis (TYPE_2__*,int,int,int) ;
 int cp_parser_skip_to_end_of_statement (TYPE_2__*) ;
 int error_mark_node ;
 int finish_else_clause (int ) ;
 int finish_if_stmt (int ) ;
 int finish_if_stmt_cond (int ,int ) ;
 int finish_switch_cond (int ,int ) ;
 int finish_switch_stmt (int ) ;
 int finish_then_clause (int ) ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static tree
cp_parser_selection_statement (cp_parser* parser, bool *if_p)
{
  cp_token *token;
  enum rid keyword;

  if (if_p != ((void*)0))
    *if_p = 0;


  token = cp_parser_require (parser, CPP_KEYWORD, "selection-statement");


  keyword = token->keyword;
  switch (keyword)
    {
    case 129:
    case 128:
      {
 tree statement;
 tree condition;


 if (!cp_parser_require (parser, CPP_OPEN_PAREN, "`('"))
   {
     cp_parser_skip_to_end_of_statement (parser);
     return error_mark_node;
   }


 if (keyword == 129)
   statement = begin_if_stmt ();
 else
   statement = begin_switch_stmt ();


 condition = cp_parser_condition (parser);

 if (!cp_parser_require (parser, CPP_CLOSE_PAREN, "`)'"))
   cp_parser_skip_to_closing_parenthesis (parser, 1, 0,
                         1);

 if (keyword == 129)
   {
     bool nested_if;


     finish_if_stmt_cond (condition, statement);


     cp_parser_implicitly_scoped_statement (parser, &nested_if);
     finish_then_clause (statement);


     if (cp_lexer_next_token_is_keyword (parser->lexer,
      RID_ELSE))
       {

  cp_lexer_consume_token (parser->lexer);
  begin_else_clause (statement);

  cp_parser_implicitly_scoped_statement (parser, ((void*)0));
  finish_else_clause (statement);






  if (if_p != ((void*)0))
    *if_p = 1;
       }
     else
       {




  if (nested_if)
    warning (OPT_Wparentheses,
      ("%Hsuggest explicit braces "
       "to avoid ambiguous %<else%>"),
      EXPR_LOCUS (statement));
       }


     finish_if_stmt (statement);
   }
 else
   {
     bool in_switch_statement_p;
     unsigned char in_statement;


     finish_switch_cond (condition, statement);


     in_switch_statement_p = parser->in_switch_statement_p;
     in_statement = parser->in_statement;
     parser->in_switch_statement_p = 1;
     parser->in_statement |= IN_SWITCH_STMT;
     cp_parser_implicitly_scoped_statement (parser, ((void*)0));
     parser->in_switch_statement_p = in_switch_statement_p;
     parser->in_statement = in_statement;


     finish_switch_stmt (statement);
   }

 return statement;
      }
      break;

    default:
      cp_parser_error (parser, "expected selection-statement");
      return error_mark_node;
    }
}
