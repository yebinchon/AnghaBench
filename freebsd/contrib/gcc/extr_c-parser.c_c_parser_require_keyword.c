
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rid { ____Placeholder_rid } rid ;
typedef int c_parser ;


 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char const*) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int) ;

__attribute__((used)) static bool
c_parser_require_keyword (c_parser *parser,
     enum rid keyword,
     const char *msgid)
{
  if (c_parser_next_token_is_keyword (parser, keyword))
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
