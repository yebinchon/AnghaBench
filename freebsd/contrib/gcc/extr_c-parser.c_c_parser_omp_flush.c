
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_parser ;


 int CPP_OPEN_PAREN ;
 int CPP_PRAGMA_EOL ;
 int c_finish_omp_flush () ;
 int c_parser_consume_pragma (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int c_parser_omp_var_list_parens (int *,int ,int *) ;
 int c_parser_skip_to_pragma_eol (int *) ;

__attribute__((used)) static void
c_parser_omp_flush (c_parser *parser)
{
  c_parser_consume_pragma (parser);
  if (c_parser_next_token_is (parser, CPP_OPEN_PAREN))
    c_parser_omp_var_list_parens (parser, 0, ((void*)0));
  else if (c_parser_next_token_is_not (parser, CPP_PRAGMA_EOL))
    c_parser_error (parser, "expected %<(%> or end of line");
  c_parser_skip_to_pragma_eol (parser);

  c_finish_omp_flush ();
}
