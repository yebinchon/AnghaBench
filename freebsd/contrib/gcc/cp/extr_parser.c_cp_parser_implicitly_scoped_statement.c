
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_OPEN_BRACE ;
 int CPP_SEMICOLON ;
 int NULL_TREE ;
 int add_stmt (int ) ;
 int begin_compound_stmt (int ) ;
 int build_empty_stmt () ;
 int cp_lexer_consume_token (int ) ;
 scalar_t__ cp_lexer_next_token_is (int ,int ) ;
 int cp_parser_compound_statement (TYPE_1__*,int *,int,int) ;
 int cp_parser_statement (TYPE_1__*,int ,int,int*) ;
 int finish_compound_stmt (int ) ;

__attribute__((used)) static tree
cp_parser_implicitly_scoped_statement (cp_parser* parser, bool *if_p)
{
  tree statement;

  if (if_p != ((void*)0))
    *if_p = 0;


  if (cp_lexer_next_token_is (parser->lexer, CPP_SEMICOLON))
    {
      cp_lexer_consume_token (parser->lexer);
      statement = add_stmt (build_empty_stmt ());
    }

  else if (cp_lexer_next_token_is (parser->lexer, CPP_OPEN_BRACE))

    statement = cp_parser_compound_statement (parser, ((void*)0), 0, 0);

  else
    {

      statement = begin_compound_stmt (0);

      cp_parser_statement (parser, NULL_TREE, 0, if_p);

      finish_compound_stmt (statement);
    }


  return statement;
}
