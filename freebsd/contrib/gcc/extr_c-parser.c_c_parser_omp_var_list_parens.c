
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_parser ;


 int CPP_CLOSE_PAREN ;
 int CPP_OPEN_PAREN ;
 int c_parser_omp_variable_list (int *,int,int ) ;
 scalar_t__ c_parser_require (int *,int ,char*) ;
 int c_parser_skip_until_found (int *,int ,char*) ;

__attribute__((used)) static tree
c_parser_omp_var_list_parens (c_parser *parser, enum tree_code kind, tree list)
{
  if (c_parser_require (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      list = c_parser_omp_variable_list (parser, kind, list);
      c_parser_skip_until_found (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  return list;
}
