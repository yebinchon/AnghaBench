
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ keyword; } ;
typedef TYPE_1__ c_token ;
typedef int c_parser ;



 scalar_t__ CPP_KEYWORD ;


 int RID_AT_END ;
 scalar_t__ RID_AT_PROPERTY ;
 int c_parser_consume_token (int *) ;
 int c_parser_declaration_or_fndef (int *,int,int,int,int,int *) ;
 int c_parser_next_token_is_keyword (int *,int ) ;
 int c_parser_objc_methodproto (int *) ;
 int c_parser_objc_property_declaration (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_pragma (int *,int ) ;
 scalar_t__ c_token_starts_methodproto (TYPE_1__*) ;
 int pedantic ;
 int pedwarn (char*) ;
 int pragma_external ;

__attribute__((used)) static void

c_parser_objc_interfacedecllist (c_parser *parser)
{
  while (1)
    {

      c_token *token;
      token = c_parser_peek_token (parser);
      if (token->type == CPP_KEYWORD
   && token->keyword == RID_AT_PROPERTY)
 {
   c_parser_objc_property_declaration (parser);
   continue;
 }


      if (c_token_starts_methodproto (token))
 {
   c_parser_objc_methodproto (parser);
   continue;
 }



      switch (c_parser_peek_token (parser)->type)
 {
 case 128:
   if (pedantic)
     pedwarn ("ISO C does not allow extra %<;%> outside of a function");
   c_parser_consume_token (parser);
   break;



 case 129:
   c_parser_pragma (parser, pragma_external);
   break;
 case 130:
   return;
 default:
   if (c_parser_next_token_is_keyword (parser, RID_AT_END))
     return;

   c_parser_declaration_or_fndef (parser, 0, 1, 0, 1, ((void*)0));
   break;
 }
    }
}
