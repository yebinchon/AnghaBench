
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 int c_parser_struct_declaration (int *) ;

__attribute__((used)) static tree
c_parser_component_decl (c_parser *parser)
{
  tree decl = c_parser_struct_declaration (parser);
  return decl;
}
