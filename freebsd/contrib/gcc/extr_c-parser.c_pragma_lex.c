
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_3__ {int type; int value; } ;
typedef TYPE_1__ c_token ;


 int CPP_EOF ;
 int CPP_KEYWORD ;
 int CPP_NAME ;
 int CPP_PRAGMA_EOL ;
 int c_parser_consume_token (int ) ;
 TYPE_1__* c_parser_peek_token (int ) ;
 int the_parser ;

enum cpp_ttype
pragma_lex (tree *value)
{
  c_token *tok = c_parser_peek_token (the_parser);
  enum cpp_ttype ret = tok->type;

  *value = tok->value;
  if (ret == CPP_PRAGMA_EOL || ret == CPP_EOF)
    ret = CPP_EOF;
  else
    {
      if (ret == CPP_KEYWORD)
 ret = CPP_NAME;
      c_parser_consume_token (the_parser);
    }

  return ret;
}
