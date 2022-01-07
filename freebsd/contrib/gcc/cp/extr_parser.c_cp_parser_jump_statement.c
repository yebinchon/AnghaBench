
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tree ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_9__ {int keyword; } ;
typedef TYPE_1__ cp_token ;
struct TYPE_10__ {int in_statement; int lexer; } ;
typedef TYPE_2__ cp_parser ;


 int CPP_KEYWORD ;
 int CPP_MULT ;
 int CPP_SEMICOLON ;



 int IN_SWITCH_STMT ;
 int NULL_TREE ;




 int cp_lexer_consume_token (int ) ;
 int cp_lexer_next_token_is (int ,int ) ;
 int cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_error (TYPE_2__*,char*) ;
 int cp_parser_expression (TYPE_2__*,int) ;
 int cp_parser_identifier (TYPE_2__*) ;
 TYPE_1__* cp_parser_require (TYPE_2__*,int ,char*) ;
 int cur_block ;
 int error (char*) ;
 int error_mark_node ;
 int finish_break_stmt () ;
 int finish_continue_stmt () ;
 int finish_goto_stmt (int ) ;
 int finish_return_stmt (int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int pedantic ;
 int pedwarn (char*) ;

__attribute__((used)) static tree
cp_parser_jump_statement (cp_parser* parser)
{
  tree statement = error_mark_node;
  cp_token *token;
  enum rid keyword;


  token = cp_parser_require (parser, CPP_KEYWORD, "jump-statement");
  if (!token)
    return error_mark_node;


  keyword = token->keyword;
  switch (keyword)
    {
    case 131:
      switch (parser->in_statement)
 {
 case 0:
   error ("break statement not within loop or switch");
   break;
 default:
   gcc_assert ((parser->in_statement & IN_SWITCH_STMT)
        || parser->in_statement == 134);
   statement = finish_break_stmt ();
   break;
 case 133:
   error ("invalid exit from OpenMP structured block");
   break;
 case 132:
   error ("break statement used with OpenMP for loop");
   break;
 }
      cp_parser_require (parser, CPP_SEMICOLON, "%<;%>");
      break;

    case 130:
      switch (parser->in_statement & ~IN_SWITCH_STMT)
 {
 case 0:
   error ("continue statement not within a loop");
   break;
 case 134:
 case 132:
   statement = finish_continue_stmt ();
   break;
 case 133:
   error ("invalid exit from OpenMP structured block");
   break;
 default:
   gcc_unreachable ();
 }
      cp_parser_require (parser, CPP_SEMICOLON, "%<;%>");
      break;

    case 128:
      {
 tree expr;



 if (cp_lexer_next_token_is_not (parser->lexer, CPP_SEMICOLON))
   expr = cp_parser_expression (parser, 0);
 else
   expr = NULL_TREE;

 statement = finish_return_stmt (expr);

 cp_parser_require (parser, CPP_SEMICOLON, "%<;%>");
      }
      break;

    case 129:

      if (cur_block)
 error ("goto not allowed in block literal");


      if (cp_lexer_next_token_is (parser->lexer, CPP_MULT))
 {

   if (pedantic)
     pedwarn ("ISO C++ forbids computed gotos");

   cp_lexer_consume_token (parser->lexer);

   finish_goto_stmt (cp_parser_expression (parser, 0));
 }
      else
 finish_goto_stmt (cp_parser_identifier (parser));

      cp_parser_require (parser, CPP_SEMICOLON, "%<;%>");
      break;

    default:
      cp_parser_error (parser, "expected jump-statement");
      break;
    }

  return statement;
}
