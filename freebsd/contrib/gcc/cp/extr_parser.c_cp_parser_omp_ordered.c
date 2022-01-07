
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_token ;
typedef int cp_parser ;


 int c_finish_omp_ordered (int ) ;
 int cp_parser_omp_structured_block (int *) ;
 int cp_parser_require_pragma_eol (int *,int *) ;

__attribute__((used)) static tree
cp_parser_omp_ordered (cp_parser *parser, cp_token *pragma_tok)
{
  cp_parser_require_pragma_eol (parser, pragma_tok);
  return c_finish_omp_ordered (cp_parser_omp_structured_block (parser));
}
