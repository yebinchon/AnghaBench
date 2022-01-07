
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
typedef int c_parser ;
struct TYPE_2__ {int * value; } ;


 int CPP_CLOSE_PAREN ;
 int CPP_NAME ;
 int CPP_OPEN_PAREN ;
 int CPP_PRAGMA_EOL ;
 int * c_finish_omp_critical (int *,int *) ;
 int c_parser_consume_token (int *) ;
 int c_parser_error (int *,char*) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 int * c_parser_omp_structured_block (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 int c_parser_require (int *,int ,char*) ;
 int c_parser_skip_to_pragma_eol (int *) ;

__attribute__((used)) static tree
c_parser_omp_critical (c_parser *parser)
{
  tree stmt, name = ((void*)0);

  if (c_parser_next_token_is (parser, CPP_OPEN_PAREN))
    {
      c_parser_consume_token (parser);
      if (c_parser_next_token_is (parser, CPP_NAME))
 {
   name = c_parser_peek_token (parser)->value;
   c_parser_consume_token (parser);
   c_parser_require (parser, CPP_CLOSE_PAREN, "expected %<)%>");
 }
      else
 c_parser_error (parser, "expected identifier");
    }
  else if (c_parser_next_token_is_not (parser, CPP_PRAGMA_EOL))
    c_parser_error (parser, "expected %<(%> or end of line");
  c_parser_skip_to_pragma_eol (parser);

  stmt = c_parser_omp_structured_block (parser);
  return c_finish_omp_critical (stmt, name);
}
