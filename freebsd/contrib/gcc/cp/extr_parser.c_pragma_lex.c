
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tree ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_6__ {int value; } ;
struct TYPE_7__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ cp_token ;
struct TYPE_8__ {int lexer; } ;


 int CPP_EOF ;
 int CPP_KEYWORD ;
 int CPP_NAME ;
 int CPP_PRAGMA_EOL ;
 int CPP_STRING ;
 int cp_lexer_consume_token (int ) ;
 TYPE_2__* cp_lexer_peek_token (int ) ;
 int cp_parser_string_literal (TYPE_3__*,int,int) ;
 TYPE_3__* the_parser ;

enum cpp_ttype
pragma_lex (tree *value)
{
  cp_token *tok;
  enum cpp_ttype ret;

  tok = cp_lexer_peek_token (the_parser->lexer);

  ret = tok->type;
  *value = tok->u.value;

  if (ret == CPP_PRAGMA_EOL || ret == CPP_EOF)
    ret = CPP_EOF;
  else if (ret == CPP_STRING)
    *value = cp_parser_string_literal (the_parser, 0, 0);
  else
    {
      cp_lexer_consume_token (the_parser->lexer);
      if (ret == CPP_KEYWORD)
 ret = CPP_NAME;
    }

  return ret;
}
