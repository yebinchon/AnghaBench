
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_parser ;


 int cp_parser_global_scope_opt (int *,int) ;
 int cp_parser_namespace_name (int *) ;
 int cp_parser_nested_name_specifier_opt (int *,int,int,int,int) ;

__attribute__((used)) static tree
cp_parser_qualified_namespace_specifier (cp_parser* parser)
{

  cp_parser_global_scope_opt (parser,
                                   0);


  cp_parser_nested_name_specifier_opt (parser,
                                  0,
                                  1,
                      0,
                              1);

  return cp_parser_namespace_name (parser);
}
