
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 int c_parser_consume_token (int *) ;
 int c_parser_next_token_is (int *,int ) ;
 int c_parser_objc_property_attrlist (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;

__attribute__((used)) static void
c_parser_objc_property_attr_decl (c_parser *parser)
{
  if (!c_parser_next_token_is (parser, CPP_OPEN_PAREN))
    return;
  c_parser_consume_token (parser);
  c_parser_objc_property_attrlist (parser);
  c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
}
