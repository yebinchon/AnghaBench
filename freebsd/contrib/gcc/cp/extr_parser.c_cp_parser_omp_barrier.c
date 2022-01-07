
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp_token ;
typedef int cp_parser ;


 int cp_parser_require_pragma_eol (int *,int *) ;
 int finish_omp_barrier () ;

__attribute__((used)) static void
cp_parser_omp_barrier (cp_parser *parser, cp_token *pragma_tok)
{
  cp_parser_require_pragma_eol (parser, pragma_tok);
  finish_omp_barrier ();
}
