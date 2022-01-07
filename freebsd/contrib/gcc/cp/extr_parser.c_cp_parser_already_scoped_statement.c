
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lexer; } ;
typedef TYPE_1__ cp_parser ;


 int CPP_CLOSE_BRACE ;
 int CPP_OPEN_BRACE ;
 int NULL_TREE ;
 scalar_t__ cp_lexer_next_token_is_not (int ,int ) ;
 int cp_parser_require (TYPE_1__*,int ,char*) ;
 int cp_parser_statement (TYPE_1__*,int ,int,int *) ;
 int cp_parser_statement_seq_opt (TYPE_1__*,int ) ;

__attribute__((used)) static void
cp_parser_already_scoped_statement (cp_parser* parser)
{

  if (cp_lexer_next_token_is_not (parser->lexer, CPP_OPEN_BRACE))
    cp_parser_statement (parser, NULL_TREE, 0, ((void*)0));
  else
    {


      cp_parser_require (parser, CPP_OPEN_BRACE, "`{'");
      cp_parser_statement_seq_opt (parser, NULL_TREE);
      cp_parser_require (parser, CPP_CLOSE_BRACE, "`}'");
    }
}
