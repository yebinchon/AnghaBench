
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_token ;
typedef int c_parser ;


 int * c_parser_peek_token (int *) ;
 int c_token_starts_typename (int *) ;

__attribute__((used)) static inline bool
c_parser_next_token_starts_typename (c_parser *parser)
{
  c_token *token = c_parser_peek_token (parser);
  return c_token_starts_typename (token);
}
