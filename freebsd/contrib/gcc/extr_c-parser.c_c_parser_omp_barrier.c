
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_parser ;


 int c_finish_omp_barrier () ;
 int c_parser_consume_pragma (int *) ;
 int c_parser_skip_to_pragma_eol (int *) ;

__attribute__((used)) static void
c_parser_omp_barrier (c_parser *parser)
{
  c_parser_consume_pragma (parser);
  c_parser_skip_to_pragma_eol (parser);

  c_finish_omp_barrier ();
}
