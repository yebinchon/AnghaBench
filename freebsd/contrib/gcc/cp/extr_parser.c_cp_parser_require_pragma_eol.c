
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cp_token ;
struct TYPE_7__ {TYPE_1__* lexer; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_6__ {int in_pragma; } ;


 int CPP_PRAGMA_EOL ;
 int cp_parser_require (TYPE_2__*,int ,char*) ;
 int cp_parser_skip_to_pragma_eol (TYPE_2__*,int *) ;

__attribute__((used)) static void
cp_parser_require_pragma_eol (cp_parser *parser, cp_token *pragma_tok)
{
  parser->lexer->in_pragma = 0;
  if (!cp_parser_require (parser, CPP_PRAGMA_EOL, "end of line"))
    cp_parser_skip_to_pragma_eol (parser, pragma_tok);
}
