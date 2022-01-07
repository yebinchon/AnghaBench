
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int in_statement; } ;
typedef TYPE_1__ cp_parser ;


 int IN_OMP_BLOCK ;

__attribute__((used)) static unsigned
cp_parser_begin_omp_structured_block (cp_parser *parser)
{
  unsigned save = parser->in_statement;
  if (parser->in_statement)
    parser->in_statement = IN_OMP_BLOCK;

  return save;
}
