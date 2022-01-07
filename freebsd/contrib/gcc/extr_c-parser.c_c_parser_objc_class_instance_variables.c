
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_parser ;


 int CPP_CLOSE_BRACE ;
 int CPP_EOF ;
 int CPP_OPEN_BRACE ;
 int CPP_PRAGMA ;
 int CPP_SEMICOLON ;
 int RID_AT_PACKAGE ;
 int RID_AT_PRIVATE ;
 int RID_AT_PROTECTED ;
 int RID_AT_PUBLIC ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int c_parser_consume_token (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_keyword (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int c_parser_pragma (int *,int ) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 scalar_t__ c_parser_struct_declaration (int *) ;
 int copy_node (scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ nreverse (scalar_t__) ;
 int objc_add_instance_variable (int ) ;
 int objc_set_visibility (int) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 int pragma_external ;

__attribute__((used)) static void
c_parser_objc_class_instance_variables (c_parser *parser)
{
  gcc_assert (c_parser_next_token_is (parser, CPP_OPEN_BRACE));
  c_parser_consume_token (parser);
  while (c_parser_next_token_is_not (parser, CPP_EOF))
    {
      tree decls;

      if (c_parser_next_token_is (parser, CPP_SEMICOLON))
 {
   if (pedantic)
     pedwarn ("extra semicolon in struct or union specified");
   c_parser_consume_token (parser);
   continue;
 }

      if (c_parser_next_token_is (parser, CPP_CLOSE_BRACE))
 {
   c_parser_consume_token (parser);
   break;
 }

      if (c_parser_next_token_is_keyword (parser, RID_AT_PRIVATE))
 {
   c_parser_consume_token (parser);
   objc_set_visibility (2);
   continue;
 }
      else if (c_parser_next_token_is_keyword (parser, RID_AT_PROTECTED))
 {
   c_parser_consume_token (parser);
   objc_set_visibility (0);
   continue;
 }
      else if (c_parser_next_token_is_keyword (parser, RID_AT_PUBLIC))
 {
   c_parser_consume_token (parser);
   objc_set_visibility (1);
   continue;
 }

      else if (c_parser_next_token_is_keyword (parser, RID_AT_PACKAGE))
 {
   c_parser_consume_token (parser);
   objc_set_visibility (3);
   continue;
 }

      else if (c_parser_next_token_is (parser, CPP_PRAGMA))
 {
   c_parser_pragma (parser, pragma_external);
   continue;
 }


      decls = c_parser_struct_declaration (parser);
      {


 tree ivar = nreverse (decls);
 for (; ivar; ivar = TREE_CHAIN (ivar))
   objc_add_instance_variable (copy_node (ivar));
      }
      c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
    }
}
