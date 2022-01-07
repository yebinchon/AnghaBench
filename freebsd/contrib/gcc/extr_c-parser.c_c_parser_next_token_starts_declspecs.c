
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ id_kind; } ;
typedef TYPE_1__ c_token ;
typedef int c_parser ;
struct TYPE_6__ {scalar_t__ type; } ;


 scalar_t__ CPP_DOT ;
 scalar_t__ C_ID_CLASSNAME ;
 TYPE_4__* c_parser_peek_2nd_token (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 scalar_t__ c_token_starts_declspecs (TYPE_1__*) ;

__attribute__((used)) static inline bool
c_parser_next_token_starts_declspecs (c_parser *parser)
{
  c_token *token = c_parser_peek_token (parser);



  return c_token_starts_declspecs (token)
  && (token->id_kind != C_ID_CLASSNAME
      || c_parser_peek_2nd_token (parser)->type != CPP_DOT);

}
