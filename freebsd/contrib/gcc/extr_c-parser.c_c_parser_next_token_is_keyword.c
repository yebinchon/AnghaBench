
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_3__ {int keyword; } ;
typedef TYPE_1__ c_token ;
typedef int c_parser ;


 TYPE_1__* c_parser_peek_token (int *) ;

__attribute__((used)) static inline bool
c_parser_next_token_is_keyword (c_parser *parser, enum rid keyword)
{
  c_token *token;


  token = c_parser_peek_token (parser);

  return token->keyword == keyword;
}
