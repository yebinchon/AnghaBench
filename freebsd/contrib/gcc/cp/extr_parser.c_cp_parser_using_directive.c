
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_parser ;


 int CPP_SEMICOLON ;
 int RID_NAMESPACE ;
 int RID_USING ;
 int cp_parser_attributes_opt (int *) ;
 int cp_parser_global_scope_opt (int *,int) ;
 int cp_parser_namespace_name (int *) ;
 int cp_parser_nested_name_specifier_opt (int *,int,int,int,int) ;
 int cp_parser_require (int *,int ,char*) ;
 int cp_parser_require_keyword (int *,int ,char*) ;
 int parse_using_directive (int ,int ) ;

__attribute__((used)) static void
cp_parser_using_directive (cp_parser* parser)
{
  tree namespace_decl;
  tree attribs;


  cp_parser_require_keyword (parser, RID_USING, "`using'");

  cp_parser_require_keyword (parser, RID_NAMESPACE, "`namespace'");

  cp_parser_global_scope_opt (parser, 0);

  cp_parser_nested_name_specifier_opt (parser,
                                  0,
                                  1,
                      0,
                              1);

  namespace_decl = cp_parser_namespace_name (parser);

  attribs = cp_parser_attributes_opt (parser);

  parse_using_directive (namespace_decl, attribs);

  cp_parser_require (parser, CPP_SEMICOLON, "`;'");
}
