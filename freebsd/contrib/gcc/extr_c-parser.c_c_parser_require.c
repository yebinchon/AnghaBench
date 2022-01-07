
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef int c_parser ;


 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char const*) ;
 scalar_t__ c_parser_next_token_is (int *,int) ;

__attribute__((used)) static bool
c_parser_require (c_parser *parser,
    enum cpp_ttype type,
    const char *msgid)
{
  if (c_parser_next_token_is (parser, type))
    {
      c_parser_consume_token (parser);
      return 1;
    }
  else
    {
      c_parser_error (parser, msgid);
      return 0;
    }
}
