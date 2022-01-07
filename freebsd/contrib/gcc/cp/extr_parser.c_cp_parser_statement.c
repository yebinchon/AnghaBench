
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int location_t ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_19__ {scalar_t__ type; int keyword; int location; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_20__ {int lexer; } ;
typedef TYPE_2__ cp_parser ;


 scalar_t__ CPP_COLON ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_KEYWORD ;
 scalar_t__ CPP_NAME ;
 scalar_t__ CPP_OPEN_BRACE ;
 scalar_t__ CPP_PRAGMA ;
 int CPP_SEMICOLON ;
 scalar_t__ NULL_TREE ;
 int SET_EXPR_LOCATION (scalar_t__,int ) ;
 scalar_t__ STATEMENT_CODE_P (int ) ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 TYPE_1__* cp_lexer_peek_nth_token (int ,int) ;
 TYPE_1__* cp_lexer_peek_token (int ) ;
 scalar_t__ cp_parser_compound_statement (TYPE_2__*,int *,int,int) ;
 int cp_parser_declaration_statement (TYPE_2__*) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 scalar_t__ cp_parser_expression_statement (TYPE_2__*,scalar_t__) ;
 scalar_t__ cp_parser_iteration_statement (TYPE_2__*) ;
 scalar_t__ cp_parser_jump_statement (TYPE_2__*) ;
 int cp_parser_label_for_labeled_statement (TYPE_2__*) ;
 scalar_t__ cp_parser_objc_statement (TYPE_2__*) ;
 scalar_t__ cp_parser_parse_definitely (TYPE_2__*) ;
 int cp_parser_parse_tentatively (TYPE_2__*) ;
 int cp_parser_pragma (TYPE_2__*,int ) ;
 scalar_t__ cp_parser_selection_statement (TYPE_2__*,int*) ;
 scalar_t__ cp_parser_try_block (TYPE_2__*) ;
 int pragma_compound ;
 int pragma_stmt ;

__attribute__((used)) static void
cp_parser_statement (cp_parser* parser, tree in_statement_expr,
       bool in_compound, bool *if_p)
{
  tree statement;
  cp_token *token;
  location_t statement_location;

 restart:
  if (if_p != ((void*)0))
    *if_p = 0;

  statement = NULL_TREE;

  token = cp_lexer_peek_token (parser->lexer);

  statement_location = token->location;


  if (token->type == CPP_KEYWORD)
    {
      enum rid keyword = token->keyword;

      switch (keyword)
 {
 case 138:
 case 136:



   cp_parser_label_for_labeled_statement (parser);
   goto restart;

 case 132:
 case 130:
   statement = cp_parser_selection_statement (parser, if_p);
   break;

 case 128:
 case 135:
 case 134:
   statement = cp_parser_iteration_statement (parser);
   break;

 case 139:
 case 137:
 case 131:
 case 133:
   statement = cp_parser_jump_statement (parser);
   break;


 case 140:
 case 144:
 case 143:
 case 142:
 case 141:
   statement = cp_parser_objc_statement (parser);
   break;

 case 129:
   statement = cp_parser_try_block (parser);
   break;

 default:


   break;
 }
    }
  else if (token->type == CPP_NAME)
    {


      token = cp_lexer_peek_nth_token (parser->lexer, 2);
      if (token->type == CPP_COLON)
 {



   cp_parser_label_for_labeled_statement (parser);
   goto restart;
 }
    }

  else if (token->type == CPP_OPEN_BRACE)

    statement = cp_parser_compound_statement (parser, ((void*)0), 0, 0);


  else if (token->type == CPP_PRAGMA)
    {





      if (in_compound)
 cp_parser_pragma (parser, pragma_compound);
      else if (!cp_parser_pragma (parser, pragma_stmt))
 goto restart;
      return;
    }
  else if (token->type == CPP_EOF)
    {
      cp_parser_error (parser, "expected statement");
      return;
    }





  if (!statement)
    {
      if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
 {
   cp_parser_parse_tentatively (parser);

   cp_parser_declaration_statement (parser);

   if (cp_parser_parse_definitely (parser))
     return;
 }

      statement = cp_parser_expression_statement (parser, in_statement_expr);
    }


  if (statement && STATEMENT_CODE_P (TREE_CODE (statement)))
    SET_EXPR_LOCATION (statement, statement_location);
}
