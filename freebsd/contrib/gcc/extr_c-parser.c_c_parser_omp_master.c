
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 int c_finish_omp_master (int ) ;
 int c_parser_omp_structured_block (int *) ;
 int c_parser_skip_to_pragma_eol (int *) ;

__attribute__((used)) static tree
c_parser_omp_master (c_parser *parser)
{
  c_parser_skip_to_pragma_eol (parser);
  return c_finish_omp_master (c_parser_omp_structured_block (parser));
}
