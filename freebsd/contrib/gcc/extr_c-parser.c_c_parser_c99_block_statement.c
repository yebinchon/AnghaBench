
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_parser ;


 int c_begin_compound_stmt (int ) ;
 int c_end_compound_stmt (int ,int ) ;
 int c_parser_statement (int *) ;
 int flag_isoc99 ;

__attribute__((used)) static tree
c_parser_c99_block_statement (c_parser *parser)
{
  tree block = c_begin_compound_stmt (flag_isoc99);
  c_parser_statement (parser);
  return c_end_compound_stmt (block, flag_isoc99);
}
