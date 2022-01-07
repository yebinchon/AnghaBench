
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_COMMA ;
 int CPP_EOF ;
 int CPP_NAME ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int c_parser_objc_property_attribute (int *) ;
 int warning (int ,char*) ;

__attribute__((used)) static void
c_parser_objc_property_attrlist (c_parser *parser)
{
  while (c_parser_next_token_is_not (parser, CPP_CLOSE_PAREN)
  && c_parser_next_token_is_not (parser, CPP_EOF))
    {
      c_parser_objc_property_attribute (parser);

      if (c_parser_next_token_is_not (parser, CPP_COMMA)
   && c_parser_next_token_is_not (parser, CPP_CLOSE_PAREN)
   && c_parser_next_token_is_not (parser, CPP_EOF))
 warning (0, "property attributes must be separated by a comma");

      if (c_parser_next_token_is (parser, CPP_COMMA)
   || c_parser_next_token_is (parser, CPP_NAME) )
 c_parser_consume_token (parser);
    }
}
