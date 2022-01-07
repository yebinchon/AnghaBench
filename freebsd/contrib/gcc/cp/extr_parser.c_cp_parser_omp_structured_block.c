
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cp_parser ;


 int NULL_TREE ;
 int begin_omp_structured_block () ;
 unsigned int cp_parser_begin_omp_structured_block (int *) ;
 int cp_parser_end_omp_structured_block (int *,unsigned int) ;
 int cp_parser_statement (int *,int ,int,int *) ;
 int finish_omp_structured_block (int ) ;

__attribute__((used)) static tree
cp_parser_omp_structured_block (cp_parser *parser)
{
  tree stmt = begin_omp_structured_block ();
  unsigned int save = cp_parser_begin_omp_structured_block (parser);

  cp_parser_statement (parser, NULL_TREE, 0, ((void*)0));

  cp_parser_end_omp_structured_block (parser, save);
  return finish_omp_structured_block (stmt);
}
