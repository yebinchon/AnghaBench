
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {int scope; } ;
typedef TYPE_1__ cp_parser ;


 int NULL_TREE ;
 int cp_parser_error (TYPE_1__*,char*) ;
 int cp_parser_nested_name_specifier_opt (TYPE_1__*,int,int,int,int) ;

__attribute__((used)) static tree
cp_parser_nested_name_specifier (cp_parser *parser,
     bool typename_keyword_p,
     bool check_dependency_p,
     bool type_p,
     bool is_declaration)
{
  tree scope;


  scope = cp_parser_nested_name_specifier_opt (parser,
            typename_keyword_p,
            check_dependency_p,
            type_p,
            is_declaration);

  if (!scope)
    {
      cp_parser_error (parser, "expected nested-name-specifier");
      parser->scope = NULL_TREE;
    }

  return scope;
}
