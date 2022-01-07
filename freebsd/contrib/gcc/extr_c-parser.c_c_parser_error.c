
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; int value; } ;
typedef TYPE_1__ c_token ;
struct TYPE_8__ {int error; } ;
typedef TYPE_2__ c_parser ;


 scalar_t__ CPP_KEYWORD ;
 scalar_t__ CPP_NAME ;
 int c_parse_error (char const*,scalar_t__,int ) ;
 TYPE_1__* c_parser_peek_token (TYPE_2__*) ;
 int c_parser_set_source_position_from_token (TYPE_1__*) ;

__attribute__((used)) static void
c_parser_error (c_parser *parser, const char *gmsgid)
{
  c_token *token = c_parser_peek_token (parser);
  if (parser->error)
    return;
  parser->error = 1;
  if (!gmsgid)
    return;


  c_parser_set_source_position_from_token (token);
  c_parse_error (gmsgid,



   (token->type == CPP_KEYWORD ? CPP_NAME : token->type),
   token->value);
}
