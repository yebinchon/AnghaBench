
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int c_parser ;
struct TYPE_2__ {int type; int keyword; } ;







 int NULL_TREE ;
 int c_dialect_objc () ;
 int c_parser_asm_definition (int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_declaration_or_fndef (int *,int,int,int,int,int *) ;
 int c_parser_objc_alias_declaration (int *) ;
 int c_parser_objc_class_declaration (int *) ;
 int c_parser_objc_class_definition (int *,int ) ;
 int c_parser_objc_method_definition (int *) ;
 int c_parser_objc_property_declaration (int *) ;
 int c_parser_objc_protocol_definition (int *,int ) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_pragma (int *,int ) ;
 int disable_extension_diagnostics () ;
 int gcc_assert (int ) ;
 int objc_finish_implementation () ;
 int pedantic ;
 int pedwarn (char*) ;
 int pragma_external ;
 int restore_extension_diagnostics (int) ;

__attribute__((used)) static void
c_parser_external_declaration (c_parser *parser)
{
  int ext;
  switch (c_parser_peek_token (parser)->type)
    {
    case 141:
      switch (c_parser_peek_token (parser)->keyword)
 {
 case 128:
   ext = disable_extension_diagnostics ();
   c_parser_consume_token (parser);
   c_parser_external_declaration (parser);
   restore_extension_diagnostics (ext);
   break;
 case 136:
   c_parser_asm_definition (parser);
   break;
 case 131:
 case 132:
   gcc_assert (c_dialect_objc ());

   c_parser_objc_class_definition (parser, NULL_TREE);
   break;
 case 134:
   gcc_assert (c_dialect_objc ());
   c_parser_objc_class_declaration (parser);
   break;
 case 135:
   gcc_assert (c_dialect_objc ());
   c_parser_objc_alias_declaration (parser);
   break;
 case 129:
   gcc_assert (c_dialect_objc ());

   c_parser_objc_protocol_definition (parser, NULL_TREE);
   break;


 case 130:
   c_parser_objc_property_declaration (parser);
   break;

 case 133:
   gcc_assert (c_dialect_objc ());
   c_parser_consume_token (parser);
   objc_finish_implementation ();
   break;
 default:
   goto decl_or_fndef;
 }
      break;
    case 137:
      if (pedantic)
 pedwarn ("ISO C does not allow extra %<;%> outside of a function");
      c_parser_consume_token (parser);
      break;
    case 138:
      c_parser_pragma (parser, pragma_external);
      break;
    case 139:
    case 140:
      if (c_dialect_objc ())
 {
   c_parser_objc_method_definition (parser);
   break;
 }


    default:
    decl_or_fndef:




      c_parser_declaration_or_fndef (parser, 1, 1, 0, 1, ((void*)0));
      break;
    }
}
