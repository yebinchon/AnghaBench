
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum omp_clause_code { ____Placeholder_omp_clause_code } omp_clause_code ;
typedef int cp_parser ;


 int CPP_OPEN_PAREN ;
 int cp_parser_omp_var_list_no_open (int *,int,int ) ;
 scalar_t__ cp_parser_require (int *,int ,char*) ;

__attribute__((used)) static tree
cp_parser_omp_var_list (cp_parser *parser, enum omp_clause_code kind, tree list)
{
  if (cp_parser_require (parser, CPP_OPEN_PAREN, "`('"))
    return cp_parser_omp_var_list_no_open (parser, kind, list);
  return list;
}
