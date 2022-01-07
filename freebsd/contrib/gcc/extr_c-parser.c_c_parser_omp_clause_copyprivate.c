
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 int OMP_CLAUSE_COPYPRIVATE ;
 int c_parser_omp_var_list_parens (int *,int ,int ) ;

__attribute__((used)) static tree
c_parser_omp_clause_copyprivate (c_parser *parser, tree list)
{
  return c_parser_omp_var_list_parens (parser, OMP_CLAUSE_COPYPRIVATE, list);
}
